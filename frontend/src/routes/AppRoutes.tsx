import { Suspense, lazy } from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import MainLayout from "../components/layout/MainLayout";

const InterestsPage = lazy(() => import("../modules/interests/InterestsPage"));
const UsersPage = () => <div className="p-4">Lista de usuarios</div>;
const CollegesPage = () => <div className="p-4">Lista de universidades</div>;
const CareersPage = () => <div className="p-4">Lista de carreras</div>;

const AppRoutes = () => {
  return (
    <BrowserRouter>
      <Suspense fallback={<div className="p-6">Cargando...</div>}>
        <Routes>
          <Route path="/" element={<MainLayout />}>
            <Route path="users" element={<UsersPage />} />
            <Route path="colleges" element={<CollegesPage />} />
            <Route path="interests" element={<InterestsPage />} />
            <Route path="careers" element={<CareersPage />} />
          </Route>
        </Routes>
      </Suspense>
    </BrowserRouter>
  );
};

export default AppRoutes;
