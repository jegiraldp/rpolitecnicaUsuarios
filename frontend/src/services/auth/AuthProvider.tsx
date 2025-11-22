import { createContext, useContext, useMemo, useState } from "react";
import type { ReactNode } from "react";
import { useEffect } from "react";
import { AuthAPI, type LoginPayload } from "./api";
import { clearSession, loadSession, persistSession, type StoredSession } from "./session";

type AuthContextType = {
  session: StoredSession | null;
  isAuthenticated: boolean;
  login: (payload: LoginPayload) => Promise<void>;
  logout: () => void;
  loading: boolean;
};

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [session, setSession] = useState<StoredSession | null>(loadSession());
  const [loading, setLoading] = useState(false);

  const login = async (payload: LoginPayload) => {
    setLoading(true);
    try {
      const result = await AuthAPI.login(payload);
      persistSession(result);
      setSession(result);
    } finally {
      setLoading(false);
    }
  };

  const logout = () => {
    clearSession();
    setSession(null);
  };

  const value = useMemo<AuthContextType>(() => ({
    session,
    isAuthenticated: Boolean(session),
    login,
    logout,
    loading,
  }), [session, loading]);

  useEffect(() => {
    let interval: number | undefined;

    const tryRefresh = async () => {
      try {
        const refreshed = await AuthAPI.refresh();
        persistSession(refreshed);
        setSession(refreshed);
      } catch {
        // Si falla, limpiar sesión
        clearSession();
        setSession(null);
      }
    };

    // Intentar rehidratar en arranque aunque session sea null (si existe cookie de refresh)
    tryRefresh();

    if (session) {
      interval = window.setInterval(tryRefresh, 10 * 60 * 1000); // cada 10 minutos
    }

    return () => {
      if (interval) window.clearInterval(interval);
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [session?.user.id]);

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth() {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error("useAuth must be used within AuthProvider");
  return ctx;
}
