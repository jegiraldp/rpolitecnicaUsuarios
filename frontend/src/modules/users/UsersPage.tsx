import { useEffect, useMemo, useState } from "react";
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
import type { College } from "@/types/College";
import type { Career } from "@/types/Career";
import type { Interest } from "@/types/Interest";

const initials = (name: string) => {
  const parts = name.trim().split(/\s+/);
  if (parts.length === 1) return parts[0].slice(0, 2).toUpperCase();
  return (parts[0][0] + parts[1][0]).toUpperCase();
};

const capitalize = (s?: string | null) => (s ? s.charAt(0).toUpperCase() + s.slice(1) : "");

export default function UsersPage() {
  const [users, setUsers] = useState<User[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [filters, setFilters] = useState<Record<string, string | string[]>>({ username:'', email:'', countries: '', colleges: '', careers: '', interests: '' });
  const [isOpen, setIsOpen] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [form, setForm] = useState({ username: "", email: "", country: "", collegeId: "", careerId: "", interestIds: [] as string[] });
  const [colleges, setColleges] = useState<College[]>([]);
  const [careers, setCareers] = useState<Career[]>([]);
  const [interests, setInterests] = useState<Interest[]>([]);
  const [confirmOpen, setConfirmOpen] = useState(false);
  const [toDelete, setToDelete] = useState<User | null>(null);

  const load = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await UsersService.list({
          page: 1,
          limit: 10,
          username: (filters.username as string) || undefined,
          email: (filters.email as string) || undefined,
          country: (filters.countries as string) || undefined,
          collegeId: (filters.colleges as string) || undefined,
          careerId: (filters.careers as string) || undefined,
          interestId: (filters.interests as string) || undefined,
        } as any);
        setUsers(data);
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
        const [col, car, int] = await Promise.all([
          CollegesService.list({ page: 1, limit: 100 }),
          CareersService.list({ page: 1, limit: 100 }),
          InterestsService.list({ page: 1, limit: 100 }),
        ]);
        setColleges(col);
        setCareers(car);
        setInterests(int);
      } catch {
        // ignore
      }
    };
    loadRefs();
  }, []);

  const openCreate = () => {
    setEditingId(null);
    setForm({ username: "", email: "", country: "", collegeId: "", careerId: "", interestIds: [] });
    setIsOpen(true);
  };

  const handleEdit = (u: User) => {
    setEditingId(u.id);
    setForm({
      username: u.username || "",
      email: u.email || "",
      country: u.country || "",
      collegeId: u.college?.id || "",
      careerId: u.career?.id || "",
      interestIds: (u.interests || []).map((i) => i.id),
    });
    setIsOpen(true);
  };

  const handleSave = async () => {
    if (!form.username.trim() || !form.email.trim()) return;
    try {
      setLoading(true);
      setError(null);
      if (editingId) {
        const updated = await UsersAPI.update(editingId, {
          username: form.username.trim(),
          email: form.email.trim(),
          country: form.country.trim() || undefined,
          collegeId: form.collegeId || undefined,
          careerId: form.careerId || undefined,
          interestIds: form.interestIds,
        });
        setUsers((prev) => prev.map((u) => (u.id === updated.id ? (updated as unknown as User) : u)));
      } else {
        const created = await UsersAPI.create({
          username: form.username.trim(),
          email: form.email.trim(),
          country: form.country.trim() || undefined,
          collegeId: form.collegeId || undefined,
          careerId: form.careerId || undefined,
          interestIds: form.interestIds,
        });
        setUsers((prev) => [(created as unknown as User), ...prev]);
      }
      setIsOpen(false);
    } catch (e: any) {
      setError(e?.message || "Error guardando usuario");
    } finally {
      setLoading(false);
    }
  };

  const requestDelete = (u: User) => {
    setToDelete(u);
    setConfirmOpen(true);
  };

  const confirmDelete = async () => {
    if (!toDelete) return;
    try {
      setLoading(true);
      setError(null);
      // Users do not have hard delete; perform deactivate
      const deactivated = await UsersAPI.deactivate(toDelete.id);
      setUsers((prev) => prev.map((x) => (x.id === toDelete.id ? (deactivated as unknown as User) : x)));
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
    {
      id: "col_status",
      header: "Estado",
      cell: ({ row }) => (
        <span className={`px-2 py-1 rounded-full text-xs ${row.original.isActive ? 'bg-green-100 text-green-700' : 'bg-gray-200 text-gray-600'}`}>
          {row.original.isActive ? 'Activo' : 'Inactivo'}
        </span>
      ),
    },
    {
      id: "col_created",
      header: "Registro",
      cell: ({ row }) => (
        <span className="text-gray-600">
          {row.original.createdAt ? new Date(row.original.createdAt).toLocaleDateString() : '—'}
        </span>
      ),
    },
    {
      id: "col_actions",
      header: () => <div className="text-right w-full">Acciones</div>,
      cell: ({ row }) => (
        <div className="flex justify-end items-center gap-2">
          <button onClick={() => handleEdit(row.original)} className="text-blue-600 hover:text-blue-800">✏️</button>
          <button onClick={() => requestDelete(row.original)} className="text-red-600 hover:text-red-800">🗑️</button>
        </div>
      ),
    },
  ];

  return (
    <div>
      <FiltersPanel
        fields={[
          { name:'username', label:'Usuario', placeholder:'Buscar por usuario'},
          { name:'email', label:'Email', placeholder:'Buscar por email', type: 'email' },
          { name:'countries', label:'País', type:'select', options: ['','Colombia','Chile','México','Argentina','España','Perú','Ecuador','Bolivia','Uruguay'].map(c=>({label: c || 'Todos', value: c ? c.toLowerCase() : ''})) },
          { name:'careers', label:'Carrera', type:'select', options: [{label:'Todas', value:''}, ...careers.map(c=>({label:c.name, value:c.id}))] },
          { name:'colleges', label:'Universidad', type:'select', options: [{label:'Todas', value:''}, ...colleges.map(c=>({label:c.name, value:c.id}))] },
          { name:'interests', label:'Interés', type:'select', options: [{label:'Todos', value:''}, ...interests.map(i=>({label:i.name, value:i.id}))] },
        ] as FilterField[]}
        values={filters}
        onChange={(n,v)=> setFilters((f)=> ({...f,[n]:v}))}
        onSearch={load}
        onClear={()=>{ setFilters({ username:'', email:'', countries: '', colleges: '', careers: '', interests: ''}); load(); }}
      />
      <div className="flex justify-between items-center mb-4">
        <h2 className="text-2xl font-semibold">Usuarios</h2>
        <button onClick={openCreate} className="bg-blue-600 text-white px-4 py-2 rounded-md text-sm hover:bg-blue-700">
          + Nuevo Usuario
        </button>
      </div>

      {error && <div className="mb-2 text-sm text-red-600">{error}</div>}
      <Table<User> data={users} columns={columns} />

      <Modal isOpen={isOpen} onClose={() => setIsOpen(false)} title={editingId ? "Editar usuario" : "Nuevo usuario"} size="lg">
        <div className="space-y-4">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm text-gray-700 mb-1">Usuario</label>
              <input
                value={form.username}
                onChange={(e) => setForm((f) => ({ ...f, username: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
                placeholder="Nombre de usuario"
              />
            </div>
            <div>
              <label className="block text-sm text-gray-700 mb-1">Email</label>
              <input
                type="email"
                value={form.email}
                onChange={(e) => setForm((f) => ({ ...f, email: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
                placeholder="correo@dominio.com"
              />
            </div>
            <div className="md:col-span-2">
              <label className="block text-sm text-gray-700 mb-1">País</label>
              <select
                value={form.country}
                onChange={(e) => setForm((f) => ({ ...f, country: e.target.value }))}
                className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
              >
                <option value="">Selecciona un país</option>
                {['Colombia','Chile','México','Argentina','España','Perú','Ecuador','Bolivia','Uruguay'].map((c) => (
                  <option key={c} value={c.toLowerCase()}>{c}</option>
                ))}
              </select>
            </div>
            <div className="md:col-span-2">
              <label className="block text-sm text-gray-700 mb-1">Carrera</label>
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
            </div>
            <div className="md:col-span-2">
              <label className="block text-sm text-gray-700 mb-1">Universidad</label>
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
            </div>
          </div>
          <div>
            <label className="block text-sm text-gray-700 mb-2">Intereses (Selecciona uno o más)</label>
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
