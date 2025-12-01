import Modal from "@/components/ui/Modal";
import type { User } from "@/types/User";
import { capitalize, formatDate, initials } from "../utils";

type UserDetailsModalProps = {
  user: User | null;
  isAuthenticated: boolean;
  onClose: () => void;
};

const initialsBadgeClass =
  "flex h-10 w-10 items-center justify-center rounded-full bg-blue-100 text-blue-700 text-sm font-semibold uppercase";

export const UserDetailsModal = ({ user, isAuthenticated, onClose }: UserDetailsModalProps) => (
  <Modal isOpen={Boolean(user)} onClose={onClose} title="Detalles del usuario" size="md">
    {user && (
      <div className="space-y-4">
        <div className="flex items-center gap-3">
          <div className={initialsBadgeClass}>{initials(user.username)}</div>
          <div>
            <div className="text-lg font-semibold text-gray-900">{capitalize(user.username)}</div>
            <div className="text-sm text-gray-600">{user.email}</div>
          </div>
        </div>
        <dl className="grid grid-cols-1 md:grid-cols-2 gap-x-6 gap-y-3 text-sm">
          <InfoLine label="País" value={capitalize(user.country || "—")} />
          {isAuthenticated && <InfoLine label="Estado" value={user.isActive ? "Activo" : "Inactivo"} />}
          <InfoLine label="Universidad" value={user.college?.name || "—"} />
          <InfoLine label="Carrera" value={user.career?.name || "—"} />
          <InfoLine
            label="Intereses"
            value={
              user.interests?.length
                ? user.interests.map((interest) => capitalize(interest.name)).join(", ")
                : "—"
            }
          />
          <InfoLine label="Creado" value={formatDate(user.createdAt)} />
          <InfoLine label="Actualizado" value={user.updatedAt ? formatDate(user.updatedAt) : "—"} />
        </dl>
        <div className="flex justify-end">
          <button onClick={onClose} className="px-3 py-2 rounded-md border">Cerrar</button>
        </div>
      </div>
    )}
  </Modal>
);

const InfoLine = ({ label, value }: { label: string; value: string }) => (
  <div className="flex flex-col">
    <dt className="text-[11px] uppercase tracking-wide text-blue-600 font-semibold">{label}</dt>
    <dd className="text-gray-900 mt-1">{value}</dd>
  </div>
);
