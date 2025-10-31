// Use Vite proxy in dev by default, backend uses global prefix '/api'
export const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || "/api";
export const USE_MOCK = (import.meta.env.VITE_USE_MOCK || "false").toLowerCase() === "true";
