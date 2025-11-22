import { API_BASE_URL } from "../config";
import { getAccessToken } from "../auth/session";

type HttpMethod = "GET" | "POST" | "PATCH" | "DELETE";

// Use explicit Render URL in prod when no env is provided; keep relative /api for local dev.
const BASE_URL =
  API_BASE_URL?.trim() ||
  (import.meta.env.PROD ? "https://rpolitecnicausuarios-2.onrender.com/api" : "/api");

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
  const url = `${joinUrl(BASE_URL, path)}${buildQuery(query)}`;
  const token = getAccessToken();
  const res = await fetch(url, {
    method,
    credentials: "include",
    headers: {
      "Content-Type": "application/json",
      ...(token ? { Authorization: `Bearer ${token}` } : {}),
      ...headers,
    },
    body: body ? JSON.stringify(body) : undefined,
  });
  if (!res.ok) {
    const contentType = res.headers.get("content-type") || "";
    if (contentType.includes("application/json")) {
      const data = await res.json().catch(() => null);
      const rawMessages: unknown[] = Array.isArray(data?.message) ? data.message : [data?.message ?? data?.error];
      const clean = rawMessages
        .flatMap((m): unknown[] => (Array.isArray(m) ? m : [m]))
        .filter((m): m is string => typeof m === "string" && m.length > 0)
        .join("; ")
        .trim();
      throw new Error(clean || "Ocurrió un error al procesar la solicitud.");
    }
    const text = await res.text().catch(() => "");
    throw new Error(text || "Ocurrió un error al procesar la solicitud.");
  }
  const contentType = res.headers.get("content-type") || "";
  if (contentType.includes("application/json")) return (await res.json()) as TResponse;
  // Fallback: return empty or text
  const txt = await res.text();
  return txt as unknown as TResponse;
}
