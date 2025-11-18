import { Outlet } from "react-router-dom";
import  NavBar  from "./NavBar";

export default function MainLayout() {
  return (
    <div className="min-h-screen bg-slate-100">
      <NavBar />
      <main className="max-w-6xl mx-auto px-4 py-6">
        <Outlet />
      </main>
    </div>
  );
}
