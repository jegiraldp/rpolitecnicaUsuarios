// src/components/ui/Button.tsx
import type { ButtonHTMLAttributes } from "react";


interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: "primary" | "secondary";
}

export const Button = ({ variant = "primary", ...props }: ButtonProps) => {
  const base = "px-4 py-2 rounded-md font-medium transition cursor-pointer capitalize";
  const styles =
    variant === "primary"
      ? "bg-blue-600 text-white hover:bg-blue-700"
      : "bg-gray-200 text-gray-700 hover:bg-gray-300";
  return <button {...props} className={`${base} ${styles} ${props.className || ""}`} />;
};
