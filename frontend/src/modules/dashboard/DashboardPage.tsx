import { useEffect, useState } from "react";
import { DashboardAPI, type DashboardResponse } from "@/services/api/dashboardService";
import { PlugIcon } from "@/utils/plugins/plugicon";

type StatCardProps = {
  label: string;
  value: number | string;
  icon: string;
  color: string;
};

type TopItem = {
  username: string;
  total: number;
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

const rankColors = (index: number) => {
  if (index === 0) return { bg: "#facc15", text: "#854d0e" }; // gold
  if (index === 1) return { bg: "#e5e7eb", text: "#4b5563" }; // silver/gray
  if (index === 2) return { bg: "#d97706", text: "#7c2d12" }; // bronze-ish
  return { bg: "#dbeafe", text: "#1d4ed8" }; // blue for the rest
};

const TopList = ({ title, icon, items }: { title: string; icon: string; items: TopItem[] }) => (
  <div className="rounded-xl border border-slate-200 bg-white p-4 shadow-sm space-y-4">
    <div className="flex items-center gap-2">
      <div className="h-9 w-9 rounded-lg flex items-center justify-center bg-slate-100">
        <PlugIcon name={icon} aria-hidden size={18} className="text-slate-700" />
      </div>
      <h2 className="text-base font-semibold text-slate-900">{title}</h2>
    </div>
    <div className="space-y-2">
      {items.map((item, idx) => {
        const colors = rankColors(idx);
        const displayName = item.username || "Sin nombre";
        return (
          <div key={`${item.username}-${idx}`} className="flex items-center justify-between rounded-lg border border-slate-100 px-3 py-2">
            <div className="flex items-center gap-3">
              <div
                className="flex h-8 w-8 items-center justify-center rounded-full text-lg font-bold"
                style={{ backgroundColor: colors.bg, color: colors.text }}
              >
                {idx + 1}
              </div>
              <span className="text-sm font-semibold text-slate-900" title={displayName}>
                {displayName}
              </span>
            </div>
            <span className="text-sm font-semibold text-slate-900">{item.total}</span>
          </div>
        );
      })}
      {items.length === 0 && <p className="text-sm text-slate-500">Sin datos disponibles.</p>}
    </div>
  </div>
);

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

      <div className="grid grid-cols-1 gap-4 lg:grid-cols-2">
        <TopList
          title="Top publicadores"
          icon="publishedArticle"
          items={
            loading || !data
              ? []
              : data.topAuthors.map((a) => ({ username: a.username, total: a.total }))
          }
        />
        <TopList
          title="Top revisores"
          icon="eye"
          items={
            loading || !data
              ? []
              : data.topReviewers.map((r) => ({ username: r.username, total: r.total }))
          }
        />
      </div>
    </div>
  );
}
