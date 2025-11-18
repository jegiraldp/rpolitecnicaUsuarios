import { useState } from "react";
import type { FormEvent } from "react";
import { useNavigate, useLocation } from "react-router-dom";
import { useAuth } from "@/services/auth/AuthProvider";

export default function LoginPage() {
  const { login, loading } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);

  const onSubmit = async (e: FormEvent) => {
    e.preventDefault();
    setError(null);
    try {
      await login({ username, password });
      const from = (location.state as any)?.from || "/users";
      navigate(from, { replace: true });
    } catch (err: any) {
      setError(err?.message || "No se pudo iniciar sesión");
    }
  };

  return (
    <div className="min-h-screen bg-slate-100 flex items-center justify-center px-4">
      <div className="bg-white shadow rounded-lg w-full max-w-md p-6 space-y-6">
        <div>
          <h1 className="text-xl font-semibold text-slate-900">Iniciar sesión</h1>
          <p className="text-sm text-slate-600">Ingresa con tu usuario y contraseña.</p>
        </div>
        {error && <div className="p-3 rounded border border-red-200 bg-red-50 text-sm text-red-700">{error}</div>}
        <form onSubmit={onSubmit} className="space-y-4">
          <div>
            <label className="block text-sm text-slate-700 mb-1">Usuario</label>
            <input
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
              placeholder="usuario"
              autoComplete="username"
              required
            />
          </div>
          <div>
            <label className="block text-sm text-slate-700 mb-1">Contraseña</label>
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
              placeholder="••••••••"
              autoComplete="current-password"
              required
            />
          </div>
          <button
            type="submit"
            disabled={loading}
            className="w-full bg-blue-600 text-white py-2.5 rounded-md font-medium hover:bg-blue-700 disabled:opacity-60"
          >
            {loading ? "Ingresando..." : "Ingresar"}
          </button>
        </form>
      </div>
    </div>
  );
}
