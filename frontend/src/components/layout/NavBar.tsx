import { NavLink, useLocation, useNavigate } from "react-router-dom";
import { useState } from "react";
import { PlugIcon } from "@/utils/plugins/plugicon";
import type { IconName } from "@/assets/icons";
import { useAuth } from "@/services/auth/AuthProvider";

const titles: Record<string, string> = {
  dashboard: "Dashboard",
  users: "Gestión de usuarios",
  interests: "Gestión de intereses",
  colleges: "Gestión de universidades",
  careers: "Gestión de carreras",
};

const navItems: { to: string; label: string; icon: IconName }[] = [
  { to: "/dashboard", label: "Dashboard", icon: "navStats" },
  { to: "/users", label: "Usuarios", icon: "navUsers" },
  { to: "/colleges", label: "Universidades", icon: "navColleges" },
  { to: "/interests", label: "Intereses", icon: "navInterests" },
  { to: "/careers", label: "Carreras", icon: "navCareers" },
] as const;

export default function Navbar() {
  const { isAuthenticated, session, logout } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();
  const base = location.pathname.split('/')[1] || '';
  const title = titles[base] || "Gestión";
  const [menuOpen, setMenuOpen] = useState(false);

  const initial = session?.user.username?.[0]?.toUpperCase() || "U";
  const handleLogout = () => {
    logout();
    setMenuOpen(false);
    navigate("/login");
  };

  return (
    <header className="bg-white border-b shadow-sm">
      <div className="max-w-6xl mx-auto px-4 py-4 flex flex-wrap gap-4 items-center justify-between">
        <div>
          <div className="flex items-center gap-2 text-blue-600 font-semibold tracking-tight">
            <PlugIcon name="navUsers" aria-hidden size={18} />
            <span>Panel Revista politecnica</span>
          </div>
          <div className="text-sm text-slate-500">{title}</div>
        </div>
        <nav className="flex items-center gap-2 bg-slate-50 border border-slate-200 rounded-full px-2 py-1">
          {navItems.map((item) => (
            <NavLink
              key={item.to}
              to={item.to}
              className={({ isActive }) =>
                `px-3 py-1.5 rounded-full text-sm font-medium flex items-center gap-2 transition ${isActive
                  ? "bg-white border border-slate-200 text-slate-900 shadow-sm"
                  : "text-slate-600 hover:text-slate-900"
                }`
              }
            >
              <PlugIcon name={item.icon} aria-hidden size={16} />
              {item.label}
            </NavLink>
          ))}
        </nav>
        <div className="relative">
          {isAuthenticated ? (
            <button
              onClick={() => setMenuOpen((prev) => !prev)}
              className="w-10 h-10 rounded-full bg-blue-600 text-white flex items-center justify-center font-semibold shadow-sm"
              aria-label="Menú de usuario"
            >
              {initial}
            </button>
          ) : (
            <button
              onClick={() => navigate("/login", { state: { from: location.pathname } })}
              className="px-4 py-2 rounded-full bg-blue-600 text-white text-sm font-medium shadow-sm hover:bg-blue-700"
            >
              Iniciar sesión
            </button>
          )}
          {isAuthenticated && menuOpen && (
            <div className="absolute right-0 mt-2 w-48 bg-white border border-slate-200 rounded-lg shadow-lg py-2 z-10">
              <div className="px-3 py-2 text-sm text-slate-600">
                <div className="font-semibold text-slate-900">{session?.user.username}</div>
                <div className="text-xs">{session?.user.email}</div>
              </div>
              <button
                onClick={handleLogout}
                className="w-full text-left px-4 py-2 text-sm text-red-600 hover:bg-red-50"
              >
                Cerrar sesión
              </button>
            </div>
          )}
        </div>
      </div>
    </header>
  );
}
