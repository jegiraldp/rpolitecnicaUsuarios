import type { ReactNode } from "react";

interface CardProps {
  title?: ReactNode;
  description?: ReactNode;
  actions?: ReactNode;
  children: ReactNode;
  className?: string;
  contentClassName?: string;
}

export function Card({
  title,
  description,
  actions,
  children,
  className = "",
  contentClassName = "p-5",
}: CardProps) {
  return (
    <section className={`bg-white border rounded-xl shadow-sm ${className}`}>
      {(title || description || actions) && (
        <header className="flex flex-wrap gap-3 items-center justify-between px-5 py-4 border-b">
          <div className="space-y-1">
            {title && <h3 className="text-lg font-semibold text-slate-900">{title}</h3>}
            {description && <p className="text-sm text-slate-500">{description}</p>}
          </div>
          {actions && <div className="flex items-center gap-2">{actions}</div>}
        </header>
      )}
      <div className={contentClassName}>{children}</div>
    </section>
  );
}

export function CardBody({ children }: { children: ReactNode }) {
  return <div className="p-5">{children}</div>;
}
