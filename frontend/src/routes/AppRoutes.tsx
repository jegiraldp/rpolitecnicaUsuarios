import { Suspense, lazy } from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import MainLayout from "../components/layout/MainLayout";
import LoginPage from "@/modules/auth/LoginPage";

const InterestsPage = lazy(() => import("../modules/interests/InterestsPage"));
const UsersPage = lazy(() => import("../modules/users/UsersPage"));
const CollegesPage = lazy(() => import("../modules/colleges/CollegesPage"));
const CareersPage = lazy(() => import("../modules/careers/CareersPage"));

const AppRoutes = () => {
  return (
    <BrowserRouter>
      <Suspense fallback={<div className="p-6">Cargando...</div>}>
        <Routes>
          <Route path="/login" element={<LoginPage />} />
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
