import { useEffect, useState } from "react";
import { DashboardAPI, type DashboardResponse } from "@/services/api/dashboardService";
import { PlugIcon } from "@/utils/plugins/plugicon";

type StatCardProps = {
  label: string;
  value: number | string;
  icon: string;
  color: string;
};

const softColor = (hex: string, alpha = 0.15) => {
  if (!hex.startsWith("#") || (hex.length !== 7 && hex.length !== 4)) return hex;
  const normalized =
    hex.length === 4
      ? `#${hex[1]}${hex[1]}${hex[2]}${hex[2]}${hex[3]}${hex[3]}`
      : hex;
  const r = parseInt(normalized.slice(1, 3), 16);
  const g = parseInt(normalized.slice(3, 5), 16);
  const b = parseInt(normalized.slice(5, 7), 16);
  return `rgba(${r}, ${g}, ${b}, ${alpha})`;
};

const StatCard = ({ label, value, icon, color }: StatCardProps) => {
  const bg = softColor(color);
  return (
    <div className="flex items-center gap-3 rounded-xl border border-slate-200 bg-white px-4 py-3 shadow-sm">
      <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-xl" style={{ backgroundColor: bg }}>
        <PlugIcon name={icon} aria-hidden size={22} style={{ color }} />
      </div>
      <div>
        <p className="text-xs uppercase tracking-wide text-slate-500">{label}</p>
        <p className="text-2xl font-semibold text-slate-900">{value}</p>
      </div>
    </div>
  );
};

export default function DashboardPage() {
  const [data, setData] = useState<DashboardResponse | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const load = async () => {
      try {
        setLoading(true);
        const res = await DashboardAPI.get();
        setData(res);
      } catch (e: any) {
        setError(e?.message || "Error cargando dashboard");
      } finally {
        setLoading(false);
      }
    };
    load();
  }, []);

  const stats = [
    { label: 'Usuarios', value: data?.users ?? 0, icon: "navUsers", color: "#2563eb" },
    { label: 'Artículos publicados', value: data?.articlesPublished ?? 0, icon: "navStats", color: "#059669" },
    { label: 'Artículos revisados', value: data?.articlesReviewed ?? 0, icon: "eye", color: "#f97316" },
  ];

  return (
    <div className="p-6 space-y-4">
      <h1 className="text-2xl font-semibold text-slate-900">Dashboard</h1>
      <p className="text-sm text-slate-600">Visión general de la actividad.</p>

      {error && <div className="text-sm text-red-600">{error}</div>}

      <div className="grid grid-cols-1 gap-3 sm:grid-cols-2 lg:grid-cols-3">
        {stats.map((s) => (
          <StatCard
            key={s.label}
            label={s.label}
            value={loading ? '...' : s.value}
            icon={s.icon}
            color={s.color}
          />
        ))}
      </div>
    </div>
  );
}
