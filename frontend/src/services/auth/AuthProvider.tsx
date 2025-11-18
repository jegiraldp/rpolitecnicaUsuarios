import { createContext, useContext, useMemo, useState } from "react";
import type { ReactNode } from "react";
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

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth() {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error("useAuth must be used within AuthProvider");
  return ctx;
}
