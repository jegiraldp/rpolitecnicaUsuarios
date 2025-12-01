import { useMemo } from "react";
import type { ColumnDef } from "@tanstack/react-table";
import Table from "@/components/ui/table";
import { PlugIcon } from "@/utils/plugins/plugicon";
import type { User } from "@/types/User";
import { capitalize, initials } from "../utils";

type UsersTableProps = {
  data: User[];
  isAuthenticated: boolean;
  pagination: { pageIndex: number; pageSize: number; totalItems: number };
  onPageChange: (pageIndex: number) => void;
  onPageSizeChange: (size: number) => void;
  onShow: (user: User) => void;
  onEdit: (user: User) => void;
  onDelete: (user: User) => void;
};

const initialsBadgeClass =
  "flex h-10 w-10 items-center justify-center rounded-full bg-blue-100 text-blue-700 text-sm font-semibold uppercase";

export const UsersTable = ({
  data,
  isAuthenticated,
  pagination,
  onPageChange,
  onPageSizeChange,
  onShow,
  onEdit,
  onDelete,
}: UsersTableProps) => {
  const columns = useMemo<ColumnDef<User>[]>(() => {
    const baseColumns: ColumnDef<User>[] = [
      {
        id: "col_user",
        header: "Usuario",
        cell: ({ row }) => {
          const user = row.original;
          const userInitials = initials(user.username);
          return (
            <div className="flex items-center gap-3">
              <div className={initialsBadgeClass}>{userInitials}</div>
              <div className="leading-tight">
                <div className="text-gray-900 font-medium">{capitalize(user.username)}</div>
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
        cell: ({ row }) => <InterestsCell interests={row.original.interests || []} />,
      },
    ];

    if (isAuthenticated) {
      baseColumns.splice(3, 0, {
        id: "col_status",
        header: "Estado",
        cell: ({ row }) => (
          <span
            className={`px-2 py-1 rounded-full text-xs ${
              row.original.isActive ? "bg-green-100 text-green-700" : "bg-gray-200 text-gray-700"
            }`}
          >
            {row.original.isActive ? "Activo" : "Inactivo"}
          </span>
        ),
      });

      baseColumns.push({
        id: "col_actions",
        header: () => <div className="text-right w-full">Acciones</div>,
        cell: ({ row }) => (
          <div className="flex justify-end items-center gap-1">
            <button
              onClick={() => onShow(row.original)}
              className="p-2 rounded-md text-blue-600 hover:text-blue-800 hover:bg-blue-50 transition-colors"
              aria-label="Mostrar usuario"
            >
              <PlugIcon name="eye" size={18} />
            </button>
            <button
              onClick={() => onEdit(row.original)}
              className="p-2 rounded-md text-blue-600 hover:text-blue-800 hover:bg-blue-50 transition-colors"
              aria-label="Editar usuario"
            >
              <PlugIcon name="edit" size={18} />
            </button>
            <button
              onClick={() => onDelete(row.original)}
              className="p-2 rounded-md text-red-600 hover:text-red-800 hover:bg-red-50 transition-colors"
              aria-label="Desactivar usuario"
            >
              <PlugIcon name="delete" size={18} />
            </button>
          </div>
        ),
      });
    } else {
      baseColumns.push({
        id: "col_actions_public",
        header: () => <div className="text-right w-full">Acciones</div>,
        cell: ({ row }) => (
          <div className="flex justify-end items-center gap-1">
            <button
              onClick={() => onShow(row.original)}
              className="p-2 rounded-md text-blue-600 hover:text-blue-800 hover:bg-blue-50 transition-colors"
              aria-label="Mostrar usuario"
            >
              <PlugIcon name="eye" size={18} />
            </button>
          </div>
        ),
      });
    }

    return baseColumns;
  }, [isAuthenticated, onDelete, onEdit, onShow]);

  return (
    <Table<User>
      data={data}
      columns={columns}
      totalItems={pagination.totalItems}
      pageIndex={pagination.pageIndex}
      pageSize={pagination.pageSize}
      onPageChange={onPageChange}
      onPageSizeChange={onPageSizeChange}
    />
  );
};

const InterestsCell = ({ interests }: { interests: { id: number; name: string }[] }) => {
  if (!interests.length) return <span className="text-gray-500 text-sm">—</span>;
  const [first, ...rest] = interests;
  const extra = rest.length;
  const title = interests.map((interest) => capitalize(interest.name)).join(", ");
  return (
    <div className="flex items-center gap-1">
      <span className="px-2 py-1 rounded-md bg-blue-100 text-blue-700 text-xs" title={title}>
        {capitalize(first.name)}
      </span>
      {extra > 0 && (
        <span className="px-2 py-1 rounded-md bg-blue-50 text-blue-700 text-xs cursor-pointer" title={title}>
          +{extra}
        </span>
      )}
    </div>
  );
};
