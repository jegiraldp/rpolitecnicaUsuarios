import { useMemo, useState } from "react";
import Table from "@/components/ui/table";
import type { ColumnDef } from "@tanstack/react-table";
import type { Interest } from "@/types/Interest";
import Modal from "@/components/ui/Modal";
import { useEffect } from "react";
import { InterestsService } from "@/services/interests";

export default function InterestsPage() {
  const [interests, setInterests] = useState<Interest[]>([
    // initial empty, will fetch
  ]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const load = async () => {
      try {
        setLoading(true);
        setError(null);
        const data = await InterestsService.list({ page: 1, limit: 10 });
        setInterests(data);
      } catch (e: any) {
        setError(e?.message || "Error cargando intereses");
      } finally {
        setLoading(false);
      }
    };
    load();
  }, []);

  const [isOpen, setIsOpen] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [name, setName] = useState("");

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
  const handleDelete = (item: Interest) =>
    setInterests((prev) => prev.filter((i) => i.id !== item.id));

  const handleSave = () => {
    if (!name.trim()) return;
    if (isEditing) {
      setInterests((prev) => prev.map((i) => (i.id === editingId ? { ...i, name: name.trim() } : i)));
    } else {
      const newItem: Interest = { id: crypto.randomUUID(), name: name.trim() };
      setInterests((prev) => [newItem, ...prev]);
    }
    setIsOpen(false);
  };

  const columns: ColumnDef<Interest>[] = [
    {
      id: "col_id", // 👈 agrega id único
      accessorKey: "id",
      header: "ID",
      cell: (info) => info.getValue(),
    },
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
            onClick={() => handleDelete(row.original)}
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
            <button onClick={handleSave} className="px-3 py-2 rounded-md bg-blue-600 text-white">Guardar</button>
          </div>
        </div>
      </Modal>
    </div>
  );
}
