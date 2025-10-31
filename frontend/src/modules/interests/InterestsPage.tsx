import { useMemo, useState } from "react";
import Table from "@/components/ui/table";
import type { ColumnDef } from "@tanstack/react-table";
import type { Interest } from "@/types/Interest";
import Modal from "@/components/ui/Modal";
import { useEffect } from "react";
import { InterestsService } from "@/services/interests";
import FiltersPanel, { type FilterField } from "@/components/ui/Filters";

export default function InterestsPage() {
  const [interests, setInterests] = useState<Interest[]>([
    // initial empty, will fetch
  ]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [filters, setFilters] = useState<Record<string, string>>({ name: "" });

  const load = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await InterestsService.list({ page: 1, limit: 10, name: filters.name || undefined });
        setInterests(data);
      } catch (e: any) {
        setError(e?.message || "Error cargando intereses");
      } finally {
        setLoading(false);
      }
    };
  useEffect(() => {
    load();
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const [isOpen, setIsOpen] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [name, setName] = useState("");
  const [confirmOpen, setConfirmOpen] = useState(false);
  const [toDelete, setToDelete] = useState<Interest | null>(null);

  const isEditing = useMemo(() => Boolean(editingId), [editingId]);

  const openCreate = () => {
    setEditingId(null);
    setName("");
    setIsOpen(true);
  };

  const handleEdit = (item: Interest) => {
    setEditingId(item.id);
    setName(item.name);
    setIsOpen(true);
  };
  const requestDelete = (item: Interest) => {
    setToDelete(item);
    setConfirmOpen(true);
  };

  const confirmDelete = async () => {
    if (!toDelete) return;
    try {
      setLoading(true);
      setError(null);
      await InterestsService.remove(toDelete.id);
      setInterests((prev) => prev.filter((i) => i.id !== toDelete.id));
      setConfirmOpen(false);
      setToDelete(null);
    } catch (e: any) {
      setError(e?.message || "Error eliminando interés");
    } finally {
      setLoading(false);
    }
  };

  const handleSave = async () => {
    if (!name.trim()) return;
    try {
      setLoading(true);
      setError(null);
      if (isEditing && editingId) {
        const updated = await InterestsService.update(editingId, { name: name.trim() });
        setInterests((prev) => prev.map((i) => (i.id === updated.id ? updated : i)));
      } else {
        const created = await InterestsService.create({ name: name.trim() });
        setInterests((prev) => [created, ...prev]);
      }
      setIsOpen(false);
    } catch (e: any) {
      setError(e?.message || "Error guardando interés");
    } finally {
      setLoading(false);
    }
  };

  const columns: ColumnDef<Interest>[] = [
    {
      id: "col_name",
      accessorKey: "name",
      header: "Nombre",
      cell: (info) => info.getValue(),
    },
    {
      id: "col_actions", // 👈 id obligatorio aquí
      header: () => <div className="text-right w-full">Acciones</div>,
      cell: ({ row }) => (
        <div className="flex justify-end items-center gap-2">
          <button
            onClick={() => handleEdit(row.original)}
            className="text-blue-600 hover:text-blue-800"
          >
            ✏️
          </button>
          <button
            onClick={() => requestDelete(row.original)}
            className="text-red-600 hover:text-red-800"
          >
            🗑️
          </button>
        </div>
      ),
    },
  ];

  return (
    <div>
      <FiltersPanel
        fields={[{ name: 'name', label: 'Nombre', placeholder: 'Buscar por nombre' }] as FilterField[]}
        values={filters}
        onChange={(n,v)=> setFilters((f)=>({...f,[n]:v}))}
        onSearch={load}
        onClear={()=>{ setFilters({ name: '' }); load(); }}
      />
      <div className="flex justify-between items-center mb-4">
        <h2 className="text-2xl font-semibold">Intereses</h2>
        <button onClick={openCreate} className="bg-blue-600 text-white px-4 py-2 rounded-md text-sm hover:bg-blue-700">
          + Nuevo Interés
        </button>
      </div>

      {error && (
        <div className="mb-2 text-sm text-red-600">{error}</div>
      )}
      <Table<Interest> data={interests} columns={columns} />

      <Modal isOpen={isOpen} onClose={() => setIsOpen(false)} title={isEditing ? "Editar interés" : "Nuevo interés"} size="sm">
        <div className="space-y-4">
          <div>
            <label className="block text-sm text-gray-700 mb-1">Nombre</label>
            <input
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
              placeholder="Nombre del interés"
            />
          </div>
          <div className="flex justify-end gap-2">
            <button onClick={() => setIsOpen(false)} className="px-3 py-2 rounded-md border">Cancelar</button>
            <button onClick={handleSave} disabled={loading} className="px-3 py-2 rounded-md bg-blue-600 text-white disabled:opacity-60">Guardar</button>
          </div>
        </div>
      </Modal>

      <Modal isOpen={confirmOpen} onClose={() => setConfirmOpen(false)} title="Confirmar eliminación" size="sm">
        <div className="space-y-4">
          <p>¿Seguro que deseas eliminar el interés <span className="font-semibold">{toDelete?.name}</span>?</p>
          <div className="flex justify-end gap-2">
            <button onClick={() => setConfirmOpen(false)} className="px-3 py-2 rounded-md border">Cancelar</button>
            <button onClick={confirmDelete} disabled={loading} className="px-3 py-2 rounded-md bg-red-600 text-white disabled:opacity-60">Eliminar</button>
          </div>
        </div>
      </Modal>
    </div>
  );
}
