import { NavLink, useLocation } from "react-router-dom";
import { PlugIcon } from "@/utils/plugins/plugicon";
import type { IconName } from "@/assets/icons";

const titles: Record<string, string> = {
  users: "Gestión de usuarios",
  interests: "Gestión de intereses",
  colleges: "Gestión de universidades",
  careers: "Gestión de carreras",
};

const navItems: { to: string; label: string; icon: IconName }[] = [
  { to: "/users", label: "Usuarios", icon: "navUsers" },
  { to: "/colleges", label: "Universidades", icon: "navColleges" },
  { to: "/interests", label: "Intereses", icon: "navInterests" },
  { to: "/careers", label: "Carreras", icon: "navCareers" },
] as const;

export default function Navbar() {
  const location = useLocation();
  const base = location.pathname.split('/')[1] || '';
  const title = titles[base] || "Gestión";
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
                `px-3 py-1.5 rounded-full text-sm font-medium flex items-center gap-2 transition ${
                  isActive
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
      </div>
    </header>
  );
}
