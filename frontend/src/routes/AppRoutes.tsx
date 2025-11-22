import { Suspense, lazy } from "react";
import { BrowserRouter, Routes, Route, Navigate } from "react-router-dom";
import MainLayout from "../components/layout/MainLayout";
import LoginPage from "@/modules/auth/LoginPage";

const InterestsPage = lazy(() => import("../modules/interests/InterestsPage"));
const UsersPage = lazy(() => import("../modules/users/UsersPage"));
const CollegesPage = lazy(() => import("../modules/colleges/CollegesPage"));
const CareersPage = lazy(() => import("../modules/careers/CareersPage"));
const AuditsPage = lazy(() => import("../modules/audits/AuditsPage"));

const AppRoutes = () => {
  return (
    <BrowserRouter>
      <Suspense fallback={<div className="p-6">Cargando...</div>}>
        <Routes>
          <Route path="/login" element={<LoginPage />} />
          <Route path="/" element={<MainLayout />}>
            <Route index element={<Navigate to="users" replace />} />
            <Route path="users" element={<UsersPage />} />
            <Route path="colleges" element={<CollegesPage />} />
            <Route path="interests" element={<InterestsPage />} />
            <Route path="careers" element={<CareersPage />} />
            <Route path="audits" element={<AuditsPage />} />
            <Route path="*" element={<Navigate to="users" replace />} />
          </Route>
          <Route path="*" element={<Navigate to="/users" replace />} />
        </Routes>
      </Suspense>
    </BrowserRouter>
  );
};

export default AppRoutes;
