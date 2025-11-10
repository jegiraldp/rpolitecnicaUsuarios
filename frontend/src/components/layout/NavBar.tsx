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
    <header className="bg-white border-b flex justify-between items-center px-6 py-4">
      {/* IZQUIERDA: título y subtítulo */}
      <div>
        <h1 className="text-xl font-semibold text-gray-800">{title}</h1>
        <p className="text-sm text-gray-500">
          Sistema de gestión para periodistas universitarios
        </p>
      </div>

      {/* DERECHA: botones de navegación */}
      <nav className="flex items-center gap-3">
        {navItems.map((item) => (
          <NavLink
            key={item.to}
            to={item.to}
            className={({ isActive }) =>
              `px-4 py-2 rounded-lg text-sm border transition-colors flex items-center gap-2 ${
                isActive
                  ? "border-blue-500 text-blue-600 bg-blue-50 font-medium"
                  : "border-transparent text-gray-600 hover:bg-gray-100"
              }`
            }
          >
            <PlugIcon name={item.icon} aria-hidden size={18} />
            {item.label}
          </NavLink>
        ))}
      </nav>
    </header>
  );
}
