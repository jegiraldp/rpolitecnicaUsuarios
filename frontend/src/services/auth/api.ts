import { http } from "../api/http";
import type { StoredSession } from "./session";

export interface LoginPayload {
  username: string;
  password: string;
}

export const AuthAPI = {
  async login(dto: LoginPayload): Promise<StoredSession> {
    return http<StoredSession, LoginPayload>({
      path: "/auth/login",
      method: "POST",
      body: dto,
    });
  },
  async refresh(): Promise<StoredSession> {
    return http<StoredSession>({
      path: "/auth/refresh-token",
      method: "POST",
    });
  },
};
