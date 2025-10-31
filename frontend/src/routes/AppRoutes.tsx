import { Suspense, lazy } from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import MainLayout from "../components/layout/MainLayout";

const InterestsPage = lazy(() => import("../modules/interests/InterestsPage"));

const AppRoutes = () => {
  return (
    <BrowserRouter>
      <Suspense fallback={<div className="p-6">Cargando...</div>}>
        <Routes>
          <Route path="/" element={<MainLayout />}>
            <Route path="interests" element={<InterestsPage />} />
          </Route>
        </Routes>
      </Suspense>
    </BrowserRouter>
  );
};

export default AppRoutes;
