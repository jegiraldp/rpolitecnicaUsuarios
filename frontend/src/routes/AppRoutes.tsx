import { Suspense, lazy } from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import MainLayout from "../components/layout/MainLayout";

// const UsersPage = lazy(() => import("./pages/Users/UsersPage"));

const routes = () => {
  return (
    <BrowserRouter>
      <Suspense fallback={<div className="p-6">Cargando...</div>}>
        <Routes>
          <Route path="/" element={<MainLayout />}>
            {/* <Route index element={<Prueba />} /> */}
           {/* <Route path="/users" element={<UsersPage />} /> */}
            {/* <Route path="about" element={<About />} /> */}
          </Route>
        </Routes>
      </Suspense>
    </BrowserRouter>
  )
}

export default routes
