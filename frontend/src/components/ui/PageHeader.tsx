import type { ReactNode } from "react";

interface PageHeaderProps {
  title: string;
  subtitle?: string;
  actions?: ReactNode;
}

export function PageHeader({ title, subtitle, actions }: PageHeaderProps) {
  return (
    <div className="flex flex-wrap gap-3 items-center justify-between">
      <div>
        <p className="text-xs uppercase tracking-wide text-blue-600 font-semibold">Panel</p>
        <h1 className="text-2xl font-bold text-slate-900 mt-1">{title}</h1>
        {subtitle && <p className="text-sm text-slate-600 mt-1">{subtitle}</p>}
      </div>
      {actions && <div className="flex items-center gap-2">{actions}</div>}
    </div>
  );
}
