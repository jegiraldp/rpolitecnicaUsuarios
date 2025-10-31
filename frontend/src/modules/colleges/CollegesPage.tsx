import { useMemo, useState } from "react";
import Table from "@/components/ui/table";
import type { ColumnDef } from "@tanstack/react-table";
import type { College } from "@/types/College";
import Modal from "@/components/ui/Modal";

export default function CollegesPage() {
  const [colleges, setColleges] = useState<College[]>([
    { id: "1", name: "Universidad Politécnica" },
    { id: "2", name: "Universidad de Artes" },
    { id: "3", name: "Universidad de Comercio" },
  ]);

  const [isOpen, setIsOpen] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [name, setName] = useState("");
  const [confirmOpen, setConfirmOpen] = useState(false);
  const [toDelete, setToDelete] = useState<College | null>(null);

  const isEditing = useMemo(() => Boolean(editingId), [editingId]);

  const openCreate = () => {
    setEditingId(null);
    setName("");
    setIsOpen(true);
  };

  const handleEdit = (item: College) => {
    setEditingId(item.id);
    setName(item.name);
    setIsOpen(true);
  };

  const requestDelete = (item: College) => {
    setToDelete(item);
    setConfirmOpen(true);
  };

  const confirmDelete = () => {
    if (!toDelete) return;
    setColleges((prev) => prev.filter((i) => i.id !== toDelete.id));
    setConfirmOpen(false);
    setToDelete(null);
  };

  const handleSave = () => {
    if (!name.trim()) return;
    if (isEditing && editingId) {
      setColleges((prev) => prev.map((i) => (i.id === editingId ? { ...i, name: name.trim() } : i)));
    } else {
      const newItem: College = { id: crypto.randomUUID(), name: name.trim() };
      setColleges((prev) => [newItem, ...prev]);
    }
    setIsOpen(false);
  };

  const columns: ColumnDef<College>[] = [
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
        <h2 className="text-2xl font-semibold">Universidades</h2>
        <button onClick={openCreate} className="bg-blue-600 text-white px-4 py-2 rounded-md text-sm hover:bg-blue-700">
          + Nueva Universidad
        </button>
      </div>

      <Table<College> data={colleges} columns={columns} />

      <Modal isOpen={isOpen} onClose={() => setIsOpen(false)} title={isEditing ? "Editar universidad" : "Nueva universidad"} size="sm">
        <div className="space-y-4">
          <div>
            <label className="block text-sm text-gray-700 mb-1">Nombre</label>
            <input
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
              placeholder="Nombre de la universidad"
            />
          </div>
          <div className="flex justify-end gap-2">
            <button onClick={() => setIsOpen(false)} className="px-3 py-2 rounded-md border">Cancelar</button>
            <button onClick={handleSave} className="px-3 py-2 rounded-md bg-blue-600 text-white">Guardar</button>
          </div>
        </div>
      </Modal>

      <Modal isOpen={confirmOpen} onClose={() => setConfirmOpen(false)} title="Confirmar eliminación" size="sm">
        <div className="space-y-4">
          <p>¿Seguro que deseas eliminar la universidad <span className="font-semibold">{toDelete?.name}</span>?</p>
          <div className="flex justify-end gap-2">
            <button onClick={() => setConfirmOpen(false)} className="px-3 py-2 rounded-md border">Cancelar</button>
            <button onClick={confirmDelete} className="px-3 py-2 rounded-md bg-red-600 text-white">Eliminar</button>
          </div>
        </div>
      </Modal>
    </div>
  );
}

