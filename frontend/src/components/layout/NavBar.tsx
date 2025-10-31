import { NavLink } from "react-router-dom";

export default function Navbar() {
  return (
    <header className="bg-white border-b flex justify-between items-center px-6 py-4">
      {/* IZQUIERDA: título y subtítulo */}
      <div>
        <h1 className="text-xl font-semibold text-gray-800">
          Gestión de Usuarios
        </h1>
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
          to="/audits"
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
          to="/audits"
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
          to="/audits"
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
        <NavLink
          to="/audits"
          className={({ isActive }) =>
            `px-4 py-2 rounded-lg text-sm border transition-colors ${
              isActive
                ? "border-blue-500 text-blue-600 bg-blue-50 font-medium"
                : "border-transparent text-gray-600 hover:bg-gray-100"
            }`
          }
        >
          Auditorías
        </NavLink>
      </nav>
    </header>
  );
}
