export type StoredSession = {
  accessToken: string;
  user: {
    id: number;
    username: string;
    email: string;
    country?: string | null;
    role?: string | null;
  };
};

const COOKIE_NAME = "panel-session";
const COOKIE_MAX_AGE_SEC = 60 * 60 * 24 * 7; // 7 días

const isBrowser = () => typeof window !== "undefined";

const readCookie = (name: string): string | null => {
  if (!isBrowser()) return null;
  const match = document.cookie.split(";").find((c) => c.trim().startsWith(`${name}=`));
  if (!match) return null;
  return decodeURIComponent(match.split("=")[1]);
};

const writeCookie = (name: string, value: string, maxAgeSec: number) => {
  if (!isBrowser()) return;
  const secure = window.location.protocol === "https:";
  document.cookie = `${name}=${encodeURIComponent(value)}; Path=/; Max-Age=${maxAgeSec}; SameSite=Lax${secure ? "; Secure" : ""}`;
};

const deleteCookie = (name: string) => {
  if (!isBrowser()) return;
  document.cookie = `${name}=; Path=/; Expires=Thu, 01 Jan 1970 00:00:00 GMT; SameSite=Lax`;
};

export function loadSession(): StoredSession | null {
  try {
    const raw = readCookie(COOKIE_NAME);
    if (!raw) return null;
    return JSON.parse(raw) as StoredSession;
  } catch {
    return null;
  }
}

export function persistSession(session: StoredSession) {
  try {
    writeCookie(COOKIE_NAME, JSON.stringify(session), COOKIE_MAX_AGE_SEC);
  } catch {
    // ignore
  }
}

export function clearSession() {
  deleteCookie(COOKIE_NAME);
}

export function getAccessToken(): string | null {
  return loadSession()?.accessToken ?? null;
}
