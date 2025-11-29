import { createContext, useContext, useMemo, useState } from "react";
import type { ReactNode } from "react";
import { useEffect } from "react";
import { AuthAPI, type LoginPayload } from "./api";
import { clearSession, loadSession, persistSession, type StoredSession } from "./session";

type AuthContextType = {
  session: StoredSession | null;
  isAuthenticated: boolean;
  login: (payload: LoginPayload) => Promise<void>;
  logout: () => Promise<void>;
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

  const logout = async () => {
    setLoading(true);
    try {
      await AuthAPI.logout();
    } catch {
      // keep clearing local session even if backend cookie removal fails
    } finally {
      clearSession();
      setSession(null);
      setLoading(false);
    }
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
      } catch { /* ignore refresh errors to avoid dropping session */ }
    };

    if (!session) {
      tryRefresh();
      return () => {
        if (interval) window.clearInterval(interval);
      };
    }

    interval = window.setInterval(tryRefresh, 10 * 60 * 1000);

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
