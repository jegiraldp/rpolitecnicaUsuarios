import { Link, NavLink, useLocation } from "react-router-dom";

const titles: Record<string, string> = {
  users: "Gestión de usuarios",
  interests: "Gestión de intereses",
  colleges: "Gestión de universidades",
  careers: "Gestión de carreras",
};

const labels: Record<string, string> = {
  '': 'Inicio',
  users: 'Usuarios',
  interests: 'Intereses',
  colleges: 'Universidades',
  careers: 'Carreras',
};

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
        <NavLink
          to="/users"
          className={({ isActive }) =>
            `px-4 py-2 rounded-lg text-sm border transition-colors ${
              isActive
                ? "border-blue-500 text-blue-600 bg-blue-50 font-medium"
                : "border-transparent text-gray-600 hover:bg-gray-100"
            }`
          }
        >
          Usuarios
        </NavLink>

        <NavLink
          to="/colleges"
          className={({ isActive }) =>
            `px-4 py-2 rounded-lg text-sm border transition-colors ${
              isActive
                ? "border-blue-500 text-blue-600 bg-blue-50 font-medium"
                : "border-transparent text-gray-600 hover:bg-gray-100"
            }`
          }
        >
          Universidades
        </NavLink>
        <NavLink
          to="/interests"
          className={({ isActive }) =>
            `px-4 py-2 rounded-lg text-sm border transition-colors ${
              isActive
                ? "border-blue-500 text-blue-600 bg-blue-50 font-medium"
                : "border-transparent text-gray-600 hover:bg-gray-100"
            }`
          }
        >
          Intereses
        </NavLink>
        <NavLink
          to="/careers"
          className={({ isActive }) =>
            `px-4 py-2 rounded-lg text-sm border transition-colors ${
              isActive
                ? "border-blue-500 text-blue-600 bg-blue-50 font-medium"
                : "border-transparent text-gray-600 hover:bg-gray-100"
            }`
          }
        >
          Carreras
        </NavLink>
      </nav>
    </header>
  );
}
