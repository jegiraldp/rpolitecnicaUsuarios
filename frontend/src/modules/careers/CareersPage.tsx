import { useEffect, useMemo, useState } from "react";
import Table from "@/components/ui/table";
import type { ColumnDef } from "@tanstack/react-table";
import type { Career } from "@/types/Career";
import Modal from "@/components/ui/Modal";
import { CareersService } from "@/services/careers";

export default function CareersPage() {
  const [careers, setCareers] = useState<Career[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const load = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await CareersService.list({ page: 1, limit: 10 });
        setCareers(data);
      } catch (e: any) {
        setError(e?.message || "Error cargando carreras");
      } finally {
        setLoading(false);
      }
    };
    load();
  }, []);

  const [isOpen, setIsOpen] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [name, setName] = useState("");
  const [confirmOpen, setConfirmOpen] = useState(false);
  const [toDelete, setToDelete] = useState<Career | null>(null);

  const isEditing = useMemo(() => Boolean(editingId), [editingId]);

  const openCreate = () => {
    setEditingId(null);
    setName("");
    setIsOpen(true);
  };

  const handleEdit = (item: Career) => {
    setEditingId(item.id);
    setName(item.name);
    setIsOpen(true);
  };

  const requestDelete = (item: Career) => {
    setToDelete(item);
    setConfirmOpen(true);
  };

  const confirmDelete = async () => {
    if (!toDelete) return;
    try {
      setLoading(true);
      setError(null);
      const removed = await CareersService.remove(toDelete.id);
      setCareers((prev) => prev.filter((i) => i.id !== removed.id));
      setConfirmOpen(false);
      setToDelete(null);
    } catch (e: any) {
      setError(e?.message || "Error eliminando carrera");
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
        const updated = await CareersService.update(editingId, { name: name.trim() });
        setCareers((prev) => prev.map((i) => (i.id === updated.id ? updated : i)));
      } else {
        const created = await CareersService.create({ name: name.trim() });
        setCareers((prev) => [created, ...prev]);
      }
      setIsOpen(false);
    } catch (e: any) {
      setError(e?.message || "Error guardando carrera");
    } finally {
      setLoading(false);
    }
  };

  const columns: ColumnDef<Career>[] = [
    {
      id: "col_name",
      accessorKey: "name",
      header: "Nombre",
      cell: (info) => info.getValue(),
    },
    {
      id: "col_actions",
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
      <div className="flex justify-between items-center mb-4">
        <h2 className="text-2xl font-semibold">Carreras</h2>
        <button onClick={openCreate} className="bg-blue-600 text-white px-4 py-2 rounded-md text-sm hover:bg-blue-700">
          + Nueva Carrera
        </button>
      </div>

      {error && <div className="mb-2 text-sm text-red-600">{error}</div>}
      <Table<Career> data={careers} columns={columns} />

      <Modal isOpen={isOpen} onClose={() => setIsOpen(false)} title={isEditing ? "Editar carrera" : "Nueva carrera"} size="sm">
        <div className="space-y-4">
          <div>
            <label className="block text-sm text-gray-700 mb-1">Nombre</label>
            <input
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
              placeholder="Nombre de la carrera"
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
          <p>¿Seguro que deseas eliminar la carrera <span className="font-semibold">{toDelete?.name}</span>?</p>
          <div className="flex justify-end gap-2">
            <button onClick={() => setConfirmOpen(false)} className="px-3 py-2 rounded-md border">Cancelar</button>
            <button onClick={confirmDelete} disabled={loading} className="px-3 py-2 rounded-md bg-red-600 text-white disabled:opacity-60">Eliminar</button>
          </div>
        </div>
      </Modal>
    </div>
  );
}

