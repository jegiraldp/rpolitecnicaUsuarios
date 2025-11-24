import type { College } from "./College";
import type { Career } from "./Career";
import type { Interest } from "./Interest";

export interface User {
  id: number;
  username: string;
  email: string;
  country?: string | null;
  isActive: boolean;
  createdAt: string;
  updatedAt?: string | null;
  college?: College | null;
  career?: Career | null;
  interests?: Interest[];
}
