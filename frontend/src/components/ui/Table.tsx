interface Column<T> {
  key: keyof T;             // Propiedad del objeto (ej: "name", "email")
  label: string;            // Encabezado de la columna
  render?: (item: T) => JSX.Element | string; // Render personalizado opcional
}

interface TableProps<T> {
  data: T[];
  columns: Column<T>[];
  onEdit?: (item: T) => void;
  onDelete?: (item: T) => void;
}

export default function Table<T extends { id: number }>({
  data,
  columns,
  onEdit,
  onDelete,
}: TableProps<T>) {
  return (
    <div className="overflow-x-auto bg-white rounded-lg border shadow-sm">
      <table className="w-full text-sm text-gray-700">
        <thead className="bg-gray-100 text-gray-600">
          <tr>
            {columns.map((col) => (
              <th key={String(col.key)} className="py-3 px-4 text-left font-medium">
                {col.label}
              </th>
            ))}
            {(onEdit || onDelete) && (
              <th className="py-3 px-4 text-right font-medium">Acciones</th>
            )}
          </tr>
        </thead>

        <tbody>
          {data.length > 0 ? (
            data.map((item) => (
              <tr key={item.id} className="border-t hover:bg-gray-50 transition">
                {columns.map((col) => (
                  <td key={String(col.key)} className="py-3 px-4">
                    {col.render ? col.render(item) : String(item[col.key])}
                  </td>
                ))}

                {(onEdit || onDelete) && (
                  <td className="py-3 px-4 text-right flex justify-end gap-3">
                    {onEdit && (
                      <button
                        onClick={() => onEdit(item)}
                        className="text-blue-600 hover:text-blue-800"
                      >
                        ✏️
                      </button>
                    )}
                    {onDelete && (
                      <button
                        onClick={() => onDelete(item)}
                        className="text-red-600 hover:text-red-800"
                      >
                        🗑️
                      </button>
                    )}
                  </td>
                )}
              </tr>
            ))
          ) : (
            <tr>
              <td
                colSpan={columns.length + (onEdit || onDelete ? 1 : 0)}
                className="py-6 text-center text-gray-500"
              >
                No hay registros disponibles.
              </td>
            </tr>
          )}
        </tbody>
      </table>
    </div>
  );
}
