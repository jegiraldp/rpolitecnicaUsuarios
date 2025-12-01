import Modal from "@/components/ui/Modal";
import { capitalize } from "../utils";
import type { User } from "@/types/User";

type ConfirmDeleteModalProps = {
  isOpen: boolean;
  loading: boolean;
  user: User | null;
  onClose: () => void;
  onConfirm: () => void;
};

export const ConfirmDeleteModal = ({ isOpen, loading, user, onClose, onConfirm }: ConfirmDeleteModalProps) => (
  <Modal isOpen={isOpen} onClose={onClose} title="Confirmar acción" size="sm">
    <div className="space-y-4">
      <p>
        ¿Seguro que deseas desactivar al usuario{" "}
        <span className="font-semibold">{user ? capitalize(user.username) : ""}</span>?
      </p>
      <div className="flex justify-end gap-2">
        <button onClick={onClose} className="px-3 py-2 rounded-md border">Cancelar</button>
        <button onClick={onConfirm} disabled={loading} className="px-3 py-2 rounded-md bg-red-600 text-white disabled:opacity-60">Desactivar</button>
      </div>
    </div>
  </Modal>
);
