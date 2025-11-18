import { API_BASE_URL } from "../config";
import { getAccessToken } from "../auth/session";

type HttpMethod = "GET" | "POST" | "PATCH" | "DELETE";

export interface RequestOptions<TBody = any> {
  path: string;
  method?: HttpMethod;
  query?: Record<string, any>;
  body?: TBody;
  headers?: Record<string, string>;
}

const buildQuery = (query?: Record<string, any>) => {
  if (!query) return "";
  const params = new URLSearchParams();
  Object.entries(query).forEach(([k, v]) => {
    if (v === undefined || v === null || v === "") return;
    params.append(k, String(v));
  });
  const qs = params.toString();
  return qs ? `?${qs}` : "";
};

const joinUrl = (base: string, path: string) => {
  const b = base.endsWith("/") ? base.slice(0, -1) : base;
  const p = path.startsWith("/") ? path : `/${path}`;
  return `${b}${p}`;
};

export async function http<TResponse = any, TBody = any>({
  path,
  method = "GET",
  query,
  body,
  headers = {},
}: RequestOptions<TBody>): Promise<TResponse> {
  const url = `${joinUrl(API_BASE_URL, path)}${buildQuery(query)}`;
  const token = getAccessToken();
  const res = await fetch(url, {
    method,
    headers: {
      "Content-Type": "application/json",
      ...(token ? { Authorization: `Bearer ${token}` } : {}),
      ...headers,
    },
    body: body ? JSON.stringify(body) : undefined,
  });
  if (!res.ok) {
    const text = await res.text().catch(() => "");
    throw new Error(`HTTP ${res.status} ${res.statusText}: ${text}`);
  }
  const contentType = res.headers.get("content-type") || "";
  if (contentType.includes("application/json")) return (await res.json()) as TResponse;
  // Fallback: return empty or text
  const txt = await res.text();
  return txt as unknown as TResponse;
}
