import { useEffect, useState } from "react";
import Table from "@/components/ui/table";
import type { ColumnDef } from "@tanstack/react-table";
import type { User } from "@/types/User";
import { UsersService } from "@/services/users";
import { UsersAPI } from "@/services/api/usersService";
import Modal from "@/components/ui/Modal";
import FiltersPanel, { type FilterField } from "@/components/ui/Filters";
import { CollegesService } from "@/services/colleges";
import { CareersService } from "@/services/careers";
import { InterestsService } from "@/services/interests";
import { CountriesService } from "@/services/countries";
import type { College } from "@/types/College";
import type { Career } from "@/types/Career";
import type { Interest } from "@/types/Interest";
import type { CountryOption } from "@/services/countries";
import { PlugIcon } from "@/utils/plugins/plugicon";
import { PageHeader } from "@/components/ui/PageHeader";
import { Card } from "@/components/ui/Card";
import { FormField } from "@/components/ui/FormField";
import { useAuth } from "@/services/auth/AuthProvider";

const initials = (name: string) => {
  const parts = name.trim().split(/\s+/);
  if (parts.length === 1) return parts[0].slice(0, 2).toUpperCase();
  return (parts[0][0] + parts[1][0]).toUpperCase();
};

const capitalize = (s?: string | null) => (s ? s.charAt(0).toUpperCase() + s.slice(1) : "");

type UserForm = {
  username: string;
  email: string;
  country: string;
  collegeId: string;
  careerId: string;
  interestIds: string[];
  isActive: boolean;
};

const createEmptyForm = (): UserForm => ({
  username: "",
  email: "",
  country: "",
  collegeId: "",
  careerId: "",
  interestIds: [],
  isActive: true,
});

export default function UsersPage() {
  const { isAuthenticated } = useAuth();
  const [users, setUsers] = useState<User[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [filters, setFilters] = useState<Record<string, string | string[]>>({
    username: "",
    email: "",
    countries: "",
    colleges: "",
    careers: "",
    interests: "",
  });
  const [pagination, setPagination] = useState({ page: 1, limit: 10, total: 0 });
  const [isOpen, setIsOpen] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [form, setForm] = useState<UserForm>(() => createEmptyForm());
  const [colleges, setColleges] = useState<College[]>([]);
  const [careers, setCareers] = useState<Career[]>([]);
  const [interests, setInterests] = useState<Interest[]>([]);
  const [countries, setCountries] = useState<CountryOption[]>([]);
  const [confirmOpen, setConfirmOpen] = useState(false);
  const [toDelete, setToDelete] = useState<User | null>(null);

  const load = async (options?: { page?: number; limit?: number; filtersOverride?: Record<string, string | string[]> }) => {
      const page = options?.page ?? pagination.page;
      const limit = options?.limit ?? pagination.limit;
      const activeFilters = options?.filtersOverride ?? filters;
      try {
        setLoading(true);
        setError(null);
        const response = await UsersService.list({
          page,
          limit,
          username: (activeFilters.username as string) || undefined,
          email: (activeFilters.email as string) || undefined,
          country: (activeFilters.countries as string) || undefined,
          collegeId: (activeFilters.colleges as string) || undefined,
          careerId: (activeFilters.careers as string) || undefined,
          interestId: (activeFilters.interests as string) || undefined,
        });
        setUsers(response.data);
        setPagination({
          page: response.meta.page,
          limit: response.meta.limit,
          total: response.meta.total,
        });
      } catch (e: any) {
        setError(e?.message || "Error cargando usuarios");
      } finally {
        setLoading(false);
      }
    };
  useEffect(() => { load(); }, []);

  useEffect(() => {
    const loadRefs = async () => {
      try {
        const [col, car, int, countryList] = await Promise.all([
          CollegesService.list({ page: 1, limit: 100 }),
          CareersService.list({ page: 1, limit: 100 }),
          InterestsService.list({ page: 1, limit: 100 }),
          CountriesService.list(),
        ]);
        setColleges(col.data);
        setCareers(car.data);
        setInterests(int.data);
        setCountries(countryList);
      } catch {
        // ignore
      }
    };
    loadRefs();
  }, []);

  const openCreate = () => {
    if (!isAuthenticated) return;
    setEditingId(null);
    setForm(createEmptyForm());
    setIsOpen(true);
  };

  const handleEdit = (u: User) => {
    if (!isAuthenticated) return;
    setEditingId(u.id);
    setForm({
      username: u.username || "",
      email: u.email || "",
      country: u.country || "",
      collegeId: u.college?.id || "",
      careerId: u.career?.id || "",
      interestIds: (u.interests || []).map((i) => i.id),
      isActive: u.isActive,
    });
    setIsOpen(true);
  };

  const handleSave = async () => {
    if (!isAuthenticated) return;
    if (!form.username.trim() || !form.email.trim()) return;
    try {
      setLoading(true);
      setError(null);
      const basePayload = {
        username: form.username.trim(),
        email: form.email.trim(),
        country: form.country.trim() || undefined,
        collegeId: form.collegeId || undefined,
        careerId: form.careerId || undefined,
        interestIds: form.interestIds,
      };
      if (editingId) {
        await UsersAPI.update(editingId, {
          ...basePayload,
          isActive: form.isActive,
        });
        await load();
      } else {
        await UsersAPI.create({
          ...basePayload,
        });
        await load({ page: 1 });
      }
      setIsOpen(false);
    } catch (e: any) {
      setError(e?.message || "Error guardando usuario");
    } finally {
      setLoading(false);
    }
  };

  const requestDelete = (u: User) => {
    if (!isAuthenticated) return;
    setToDelete(u);
    setConfirmOpen(true);
  };

  const confirmDelete = async () => {
    if (!isAuthenticated) return;
    if (!toDelete) return;
    try {
      setLoading(true);
      setError(null);
      // Users do not have hard delete; perform deactivate
      await UsersAPI.deactivate(toDelete.id);
      await load();
      setConfirmOpen(false);
      setToDelete(null);
    } catch (e: any) {
      setError(e?.message || "Error desactivando usuario");
    } finally {
      setLoading(false);
    }
  };

  const columns: ColumnDef<User>[] = [
    {
      id: "col_user",
      header: "Usuario",
      cell: ({ row }) => {
        const u = row.original;
        const inits = initials(u.username);
        return (
          <div className="flex items-center gap-3">
            <div className="h-9 w-9 rounded-full bg-blue-100 text-blue-700 flex items-center justify-center text-sm font-semibold">
              {inits}
            </div>
            <div className="leading-tight">
              <div className="text-gray-900 font-medium">{capitalize(u.username)}</div>
            </div>
          </div>
        );
      },
    },
    {
      id: "col_email",
      header: "Email",
      cell: ({ row }) => <span className="text-gray-700">{row.original.email}</span>,
    },
    {
      id: "col_country",
      header: "País",
      cell: ({ row }) => (
        <span className="px-2 py-1 rounded-full bg-green-100 text-green-700 text-xs">
          {capitalize(row.original.country || "")}
        </span>
      ),
    },
    {
      id: "col_college",
      header: "Universidad",
      cell: ({ row }) => <span>{row.original.college?.name || "—"}</span>,
    },
    {
      id: "col_career",
      header: "Carrera",
      cell: ({ row }) => <span>{row.original.career?.name || "—"}</span>,
    },
    {
      id: "col_interests",
      header: "Intereses",
      cell: ({ row }) => (
        <div className="flex flex-wrap gap-2">
          {(row.original.interests || []).map((i) => (
            <span key={i.id} className="px-2 py-1 rounded-md bg-blue-100 text-blue-700 text-xs">
              {capitalize(i.name)}
            </span>
          ))}
        </div>
      ),
    },
    ...(isAuthenticated
      ? [{
        id: "col_actions",
        header: () => <div className="text-right w-full">Acciones</div>,
        cell: ({ row }) => (
          <div className="flex justify-end items-center gap-1">
            <button
              onClick={() => handleEdit(row.original)}
              className="p-2 rounded-md text-blue-600 hover:text-blue-800 hover:bg-blue-50 transition-colors"
              aria-label="Editar usuario"
            >
              <PlugIcon name="edit" size={18} />
            </button>
            <button
              onClick={() => requestDelete(row.original)}
              className="p-2 rounded-md text-red-600 hover:text-red-800 hover:bg-red-50 transition-colors"
              aria-label="Desactivar usuario"
            >
              <PlugIcon name="delete" size={18} />
            </button>
          </div>
        ),
      }] as ColumnDef<User>[]
      : []),
  ];

  const countryOptions = [
    { label: "Todos", value: "" },
    ...countries.map((c) => ({ label: c.name, value: c.value })),
  ];

  return (
    <div className="space-y-6">
      <PageHeader
        title="Usuarios"
        subtitle="Administra periodistas, acceso y pertenencias."
        actions={
          isAuthenticated ? (
            <button
              onClick={openCreate}
              className="bg-blue-600 text-white px-4 py-2 rounded-md text-sm hover:bg-blue-700 shadow-sm"
            >
              + Nuevo usuario
            </button>
          ) : null
        }
      />

      <FiltersPanel
        fields={[
          { name:'username', label:'Usuario', placeholder:'Buscar por usuario'},
          { name:'email', label:'Email', placeholder:'Buscar por email', type: 'email' },
          { name:'countries', label:'País', type:'select', options: countryOptions },
          { name:'careers', label:'Carrera', type:'select', options: [{label:'Todas', value:''}, ...careers.map(c=>({label:c.name, value:c.id}))] },
          { name:'colleges', label:'Universidad', type:'select', options: [{label:'Todas', value:''}, ...colleges.map(c=>({label:c.name, value:c.id}))] },
          { name:'interests', label:'Interés', type:'select', options: [{label:'Todos', value:''}, ...interests.map(i=>({label:i.name, value:i.id}))] },
        ] as FilterField[]}
        values={filters}
        onChange={(n,v)=> setFilters((f)=> ({...f,[n]:v}))}
        onSearch={() => load({ page: 1 })}
        onClear={()=>{
          const cleared = { username:'', email:'', countries: '', colleges: '', careers: '', interests: '' };
          setFilters(cleared);
          load({ page: 1, filtersOverride: cleared });
        }}
      />

      {error && <div className="mb-2 text-sm text-red-600">{error}</div>}

      <Card className="overflow-hidden" contentClassName="p-0">
        <Table<User>
          data={users}
          columns={columns}
          totalItems={pagination.total}
          pageIndex={pagination.page - 1}
          pageSize={pagination.limit}
          onPageChange={(pageIndex) => load({ page: pageIndex + 1 })}
          onPageSizeChange={(size) => load({ page: 1, limit: size })}
        />
      </Card>

      <Modal isOpen={isOpen} onClose={() => setIsOpen(false)} title={editingId ? "Editar usuario" : "Nuevo usuario"} size="lg">
        <div className="space-y-4">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <FormField label="Usuario" htmlFor="username">
              <input
                id="username"
                value={form.username}
                onChange={(e) => setForm((f) => ({ ...f, username: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
                placeholder="Nombre de usuario"
              />
            </FormField>
            <FormField label="Email" htmlFor="email">
              <input
                id="email"
                type="email"
                value={form.email}
                onChange={(e) => setForm((f) => ({ ...f, email: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
                placeholder="correo@dominio.com"
              />
            </FormField>
            <FormField label="País">
              <select
                value={form.country}
                onChange={(e) => setForm((f) => ({ ...f, country: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Selecciona un país</option>
                {countries.map((c) => (
                  <option key={c.code} value={c.value}>{c.name}</option>
                ))}
              </select>
            </FormField>
            <FormField label="Carrera">
              <select
                value={form.careerId}
                onChange={(e) => setForm((f) => ({ ...f, careerId: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Selecciona una carrera</option>
                {careers.map((c) => (
                  <option key={c.id} value={c.id}>{c.name}</option>
                ))}
              </select>
            </FormField>
            <FormField label="Universidad">
              <select
                value={form.collegeId}
                onChange={(e) => setForm((f) => ({ ...f, collegeId: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Selecciona una universidad</option>
                {colleges.map((c) => (
                  <option key={c.id} value={c.id}>{c.name}</option>
                ))}
              </select>
            </FormField>
            {editingId && (
              <FormField label="Estado del usuario">
                <select
                  value={form.isActive ? "true" : "false"}
                  onChange={(e) => setForm((f) => ({ ...f, isActive: e.target.value === "true" }))}
                  className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                >
                  <option value="true">Activo</option>
                  <option value="false">Inactivo</option>
                </select>
              </FormField>
            )}
          </div>
          <div>
            <p className="block text-sm text-gray-700 mb-2">Intereses (Selecciona uno o más)</p>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
              {interests.map((i) => {
                const checked = form.interestIds.includes(i.id);
                return (
                  <label key={i.id} className={`flex items-center gap-2 border rounded-md px-3 py-2 cursor-pointer ${checked ? 'border-blue-400 bg-blue-50' : 'border-gray-200 hover:border-gray-300'}`}>
                    <input
                      type="checkbox"
                      checked={checked}
                      onChange={(e) => {
                        const isOn = e.target.checked;
                        setForm((f) => ({
                          ...f,
                          interestIds: isOn ? [...f.interestIds, i.id] : f.interestIds.filter((id) => id !== i.id),
                        }));
                      }}
                      className="accent-blue-600"
                    />
                    <span className="text-sm text-gray-700">{capitalize(i.name)}</span>
                  </label>
                );
              })}
            </div>
          </div>
          <div className="flex justify-end gap-2">
            <button onClick={() => setIsOpen(false)} className="px-3 py-2 rounded-md border">Cancelar</button>
            <button onClick={handleSave} disabled={loading} className="px-3 py-2 rounded-md bg-blue-600 text-white disabled:opacity-60">Guardar</button>
          </div>
        </div>
      </Modal>

      <Modal isOpen={confirmOpen} onClose={() => setConfirmOpen(false)} title="Confirmar acción" size="sm">
        <div className="space-y-4">
          <p>
            ¿Seguro que deseas desactivar al usuario
            {" "}
            <span className="font-semibold">{toDelete ? capitalize(toDelete.username) : ""}</span>?
          </p>
          <div className="flex justify-end gap-2">
            <button onClick={() => setConfirmOpen(false)} className="px-3 py-2 rounded-md border">Cancelar</button>
            <button onClick={confirmDelete} disabled={loading} className="px-3 py-2 rounded-md bg-red-600 text-white disabled:opacity-60">Desactivar</button>
          </div>
        </div>
      </Modal>
    </div>
  );
}
