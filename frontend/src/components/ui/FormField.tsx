import type { ReactNode } from "react";

interface FormFieldProps {
  label: string;
  htmlFor?: string;
  hint?: string;
  children: ReactNode;
}

export function FormField({ label, htmlFor, hint, children }: FormFieldProps) {
  return (
    <label className="block space-y-1 text-sm text-slate-700" htmlFor={htmlFor}>
      <span className="font-medium text-slate-800">{label}</span>
      {children}
      {hint && <p className="text-xs text-slate-500">{hint}</p>}
    </label>
  );
}
