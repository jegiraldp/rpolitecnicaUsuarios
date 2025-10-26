import { Outlet } from "react-router-dom";
import { NavBar } from "./NavBar";

export default function MainLayout() {
  return (
    <div className="min-h-screen bg-gray-200">
      <NavBar />
      <main className="p-6">
        <Outlet />
      </main>
    </div>
  );
}
