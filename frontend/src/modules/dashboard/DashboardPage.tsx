import { useEffect, useState } from "react";
import {
  DashboardAPI,
  type DashboardResponse,
  type DashboardDetailType,
  type DashboardPublicationDetail,
  type DashboardReviewDetail,
} from "@/services/api/dashboardService";
import { PlugIcon } from "@/utils/plugins/plugicon";
import {
  Bar,
  BarChart,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";

type StatCardProps = {
  label: string;
  value: number | string;
  icon: string;
  color: string;
};

type TopItem = {
  id: number;
  username: string;
  total: number;
};

type ChartItem = {
  label: string;
  total: number;
};

type SelectedDetail = {
  type: DashboardDetailType;
  userId: number;
  username: string;
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

const TopList = ({
  title,
  icon,
  items,
  onSelect,
}: {
  title: string;
  icon: string;
  items: TopItem[];
  onSelect?: (userId: number, username: string) => void;
}) => (
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
          <div
            key={`${item.username}-${idx}`}
            className="flex items-center justify-between rounded-lg border border-slate-100 px-3 py-2 cursor-pointer hover:border-slate-200 hover:bg-slate-50"
            onClick={() => onSelect?.(item.id, item.username)}
          >
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

const ChartCard = ({
  title,
  icon,
  data,
  barColor = "#2563eb",
}: {
  title: string;
  icon: string;
  data: ChartItem[];
  barColor?: string;
}) => (
  <div className="rounded-xl border border-slate-200 bg-white p-4 shadow-sm space-y-4">
    <div className="flex items-center gap-2">
      <div className="h-9 w-9 rounded-lg flex items-center justify-center bg-slate-100">
        <PlugIcon name={icon} aria-hidden size={18} className="text-slate-700" />
      </div>
      <h2 className="text-base font-semibold text-slate-900">{title}</h2>
    </div>
    <div className="h-64">
      <ResponsiveContainer width="100%" height="100%">
        <BarChart data={data} margin={{ top: 8, right: 8, left: 0, bottom: 0 }}>
          <XAxis dataKey="label" tick={{ fontSize: 12 }} />
          <YAxis allowDecimals={false} tick={{ fontSize: 12 }} />
          <Tooltip />
          <Bar dataKey="total" fill={barColor} radius={[8, 8, 0, 0]} />
        </BarChart>
      </ResponsiveContainer>
    </div>
    {data.length === 0 && <p className="text-sm text-slate-500">Sin datos disponibles.</p>}
  </div>
);

export default function DashboardPage() {
  const [data, setData] = useState<DashboardResponse | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [countryLimit, setCountryLimit] = useState<number | "all">(5);
  const [selectedDetail, setSelectedDetail] = useState<SelectedDetail | null>(null);
  const [detailItems, setDetailItems] = useState<(DashboardPublicationDetail | DashboardReviewDetail)[]>([]);
  const [detailLoading, setDetailLoading] = useState(false);
  const [detailError, setDetailError] = useState<string | null>(null);

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

const limitData = (items: ChartItem[]) =>
  countryLimit === "all" ? items : items.slice(0, countryLimit);

const usersByCountry: ChartItem[] =
  loading || !data ? [] : limitData(data.usersByCountry.map((c) => ({ label: c.country, total: c.total })));

  const publicationsByCountry: ChartItem[] =
    loading || !data ? [] : limitData(data.publicationsByCountry.map((c) => ({ label: c.country, total: c.total })));

  const handleSelectDetail = async (type: DashboardDetailType, userId: number, username: string) => {
    setSelectedDetail({ type, userId, username });
    setDetailLoading(true);
    setDetailError(null);
    try {
      const details = await DashboardAPI.getDetails(type, userId);
      setDetailItems(details);
    } catch (e: any) {
      setDetailError(e?.message || "Error cargando detalles");
      setDetailItems([]);
    } finally {
      setDetailLoading(false);
    }
  };

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

      <div className="flex flex-col gap-3">
        <div className="flex flex-wrap items-center gap-3">
          <div className="text-sm font-medium text-slate-700">Filtrar países:</div>
          <select
            className="rounded-lg border border-slate-200 px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-slate-400"
            value={countryLimit}
            onChange={(e) => {
              const val = e.target.value;
              setCountryLimit(val === "all" ? "all" : Number(val));
            }}
          >
            <option value={5}>Top 5</option>
            <option value={10}>Top 10</option>
            <option value={15}>Top 15</option>
            <option value={20}>Top 20</option>
            <option value="all">Todos</option>
          </select>
        </div>

        <div className="grid grid-cols-1 gap-4 lg:grid-cols-2">
          <ChartCard title="Usuarios por país" icon="navUsers" data={usersByCountry} barColor="#2563eb" />
          <ChartCard title="Publicaciones por país" icon="navStats" data={publicationsByCountry} barColor="#10b981" />
        </div>
      </div>

      <div className="grid grid-cols-1 gap-4 lg:grid-cols-2">
        <TopList
          title="Top publicadores"
          icon="publishedArticle"
          items={
            loading || !data
              ? []
              : data.topAuthors.map((a) => ({ id: a.id, username: a.username, total: a.total }))
          }
          onSelect={(userId, username) => handleSelectDetail("author", userId, username)}
        />
        <TopList
          title="Top revisores"
          icon="eye"
          items={
            loading || !data
              ? []
              : data.topReviewers.map((r) => ({ id: r.id, username: r.username, total: r.total }))
          }
          onSelect={(userId, username) => handleSelectDetail("reviewer", userId, username)}
        />
      </div>

      {selectedDetail && (
        <div className="rounded-xl border border-slate-200 bg-white p-4 shadow-sm space-y-3">
          <div className="flex items-center justify-between gap-3">
            <div className="flex items-center gap-2">
              <PlugIcon name={selectedDetail.type === "author" ? "publishedArticle" : "eye"} size={18} />
              <h3 className="text-base font-semibold text-slate-900">
                {selectedDetail.type === "author" ? "Artículos publicados" : "Artículos revisados"} por{" "}
                <span className="text-slate-600">{selectedDetail.username}</span>
              </h3>
            </div>
            <button
              className="text-sm text-slate-500 hover:text-slate-800"
              onClick={() => {
                setSelectedDetail(null);
                setDetailItems([]);
                setDetailError(null);
              }}
            >
              Cerrar
            </button>
          </div>

          {detailError && <p className="text-sm text-red-600">{detailError}</p>}
          {detailLoading && <p className="text-sm text-slate-500">Cargando...</p>}

          {!detailLoading && detailItems.length === 0 && !detailError && (
            <p className="text-sm text-slate-500">Sin elementos para mostrar.</p>
          )}

          <div className="space-y-2">
            {detailItems.map((item) => {
              const isReview = (item as DashboardReviewDetail).publicationId !== undefined;
              if (isReview) {
                const r = item as DashboardReviewDetail;
                return (
                  <div key={`review-${r.id}`} className="rounded-lg border border-slate-100 px-3 py-2">
                    <div className="text-sm font-semibold text-slate-900">
                      {r.publicationTitle || "Sin título"}
                    </div>
                    <div className="mt-1 text-xs text-slate-500">
                      Asignado: {r.dateAssigned ? new Date(r.dateAssigned).toLocaleDateString() : "N/A"} · Completado:{" "}
                      {r.dateCompleted ? new Date(r.dateCompleted).toLocaleDateString() : "N/A"}
                    </div>
                  </div>
                );
              }

              const p = item as DashboardPublicationDetail;
              return (
                <div key={`pub-${p.id}`} className="rounded-lg border border-slate-100 px-3 py-2">
                  <div className="text-sm font-semibold text-slate-900">{p.title || "Sin título"}</div>
                  <div className="mt-1 text-xs text-slate-500">
                    Publicado: {p.datePublished ? new Date(p.datePublished).toLocaleDateString() : "N/A"}
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      )}
    </div>
  );
}
