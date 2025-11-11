import { useEffect, useMemo, useState } from "react";
import {
  flexRender,
  getCoreRowModel,
  getPaginationRowModel,
  useReactTable,
} from "@tanstack/react-table";
import type { ColumnDef, OnChangeFn, PaginationState } from "@tanstack/react-table";

interface TableProps<T extends object> {
  data: T[];
  columns: ColumnDef<T, any>[];
  initialPageSize?: number;
  pageSizeOptions?: number[];
  totalItems?: number;
  pageIndex?: number;
  pageSize?: number;
  onPageChange?: (pageIndex: number) => void;
  onPageSizeChange?: (pageSize: number) => void;
}

export default function Table<T extends object>({
  data,
  columns,
  initialPageSize = 10,
  pageSizeOptions = [5, 10, 25, 50],
  totalItems,
  pageIndex: controlledPageIndex,
  pageSize: controlledPageSize,
  onPageChange,
  onPageSizeChange,
}: TableProps<T>) {
  const isControlled = controlledPageIndex !== undefined && controlledPageSize !== undefined;

  const [internalPagination, setInternalPagination] = useState<PaginationState>({
    pageIndex: 0,
    pageSize: initialPageSize,
  });

  useEffect(() => {
    if (isControlled) return;
    setInternalPagination((prev) => {
      const totalPages = Math.max(1, Math.ceil((data?.length ?? 0) / prev.pageSize));
      const safeIndex = Math.min(prev.pageIndex, totalPages - 1);
      if (safeIndex === prev.pageIndex) return prev;
      return { ...prev, pageIndex: safeIndex };
    });
  }, [data.length, isControlled]);

  const paginationState: PaginationState = isControlled
    ? { pageIndex: controlledPageIndex!, pageSize: controlledPageSize! }
    : internalPagination;

  const manualPageCount = isControlled
    ? Math.max(1, Math.ceil((totalItems ?? data.length) / paginationState.pageSize))
    : undefined;

  const handlePaginationChange: OnChangeFn<PaginationState> = (updater) => {
    const next =
      typeof updater === "function" ? updater(paginationState) : updater;

    if (isControlled) {
      if (next.pageSize !== paginationState.pageSize) {
        onPageSizeChange?.(next.pageSize);
      }
      if (next.pageIndex !== paginationState.pageIndex) {
        onPageChange?.(next.pageIndex);
      }
    } else {
      setInternalPagination(next);
    }
  };

  const table = useReactTable({
    data,
    columns,
    getCoreRowModel: getCoreRowModel(),
    ...(isControlled ? {} : { getPaginationRowModel: getPaginationRowModel() }),
    manualPagination: isControlled,
    ...(isControlled ? { pageCount: manualPageCount } : {}),
    state: { pagination: paginationState },
    onPaginationChange: handlePaginationChange,
  });

  const totalRows =
    totalItems ?? (isControlled ? data.length : table.getPrePaginationRowModel().rows.length);

  const computedPageCount = Math.max(1, isControlled ? manualPageCount ?? 1 : table.getPageCount());
  const pageStart = totalRows === 0 ? 0 : paginationState.pageIndex * paginationState.pageSize + 1;
  const pageEnd =
    totalRows === 0 ? 0 : Math.min((paginationState.pageIndex + 1) * paginationState.pageSize, totalRows);

  type PageToken = number | "ellipsis";

  const pageButtons = useMemo(() => {
    const rawIndexes = new Set<number>();
    rawIndexes.add(0);
    rawIndexes.add(computedPageCount - 1);
    for (let offset = -1; offset <= 1; offset += 1) {
      const candidate = paginationState.pageIndex + offset;
      if (candidate >= 0 && candidate < computedPageCount) {
        rawIndexes.add(candidate);
      }
    }
    if (computedPageCount <= 7) {
      for (let i = 0; i < computedPageCount; i += 1) rawIndexes.add(i);
    }

    const ordered = Array.from(rawIndexes).sort((a, b) => a - b);
    const tokens: PageToken[] = [];
    for (let i = 0; i < ordered.length; i += 1) {
      const current = ordered[i];
      const prev = ordered[i - 1];
      if (i > 0 && prev !== undefined && current - prev > 1) {
        tokens.push("ellipsis");
      }
      tokens.push(current);
    }
    return tokens;
  }, [computedPageCount, paginationState.pageIndex]);

  const normalizedPageSizeOptions = useMemo(() => {
    const set = new Set(pageSizeOptions);
    set.add(paginationState.pageSize);
    return Array.from(set).sort((a, b) => a - b);
  }, [pageSizeOptions, paginationState.pageSize]);

  const handlePageSizeSelect = (value: number) => {
    table.setPageSize(value);
    table.setPageIndex(0);
  };

  return (
    <div className="bg-white rounded-lg border shadow-sm">
      <div className="overflow-x-auto">
        <table className="w-full table-fixed text-sm text-gray-700">
          <thead className="bg-gray-100 text-gray-600">
            {table.getHeaderGroups().map((headerGroup) => (
              <tr key={headerGroup.id}>
                {headerGroup.headers.map((header) => (
                  <th
                    key={header.id}
                    className="py-3 px-4 text-left font-medium truncate"
                  >
                    {header.isPlaceholder
                      ? null
                      : flexRender(header.column.columnDef.header, header.getContext())}
                  </th>
                ))}
              </tr>
            ))}
          </thead>

          <tbody>
            {table.getRowModel().rows.length ? (
              table.getRowModel().rows.map((row) => (
                <tr key={row.id} className="border-t hover:bg-gray-50 transition">
                  {row.getVisibleCells().map((cell) => (
                    <td key={cell.id} className="py-3 px-4 truncate">
                      {flexRender(cell.column.columnDef.cell, cell.getContext())}
                    </td>
                  ))}
                </tr>
              ))
            ) : (
              <tr>
                <td
                  colSpan={columns.length}
                  className="py-6 text-center text-gray-500"
                >
                  No hay registros disponibles.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      <div className="flex flex-wrap items-center gap-3 px-4 py-3 border-t text-sm text-gray-600">
        <div>
          Mostrando {pageStart} - {pageEnd} de {totalRows} registros
        </div>

        <div className="ml-auto flex flex-wrap items-center gap-2">
          <button
            type="button"
            onClick={() => table.previousPage()}
            disabled={!table.getCanPreviousPage()}
            className="px-2 py-1 rounded border text-gray-700 disabled:opacity-40 disabled:cursor-not-allowed"
          >
            Anterior
          </button>

          <div className="flex items-center gap-1">
            {pageButtons.map((token, idx) =>
              token === "ellipsis" ? (
                <span key={`ellipsis-${idx}`} className="px-2 text-gray-500 select-none">
                  ...
                </span>
              ) : (
                <button
                  key={token}
                  type="button"
                  onClick={() => table.setPageIndex(token)}
                  className={`min-w-8 px-2 py-1 rounded border ${
                    token === paginationState.pageIndex
                      ? "bg-gray-800 text-white border-gray-800"
                      : "text-gray-700 border-gray-300 hover:bg-gray-100"
                  }`}
                >
                  {token + 1}
                </button>
              )
            )}
          </div>

          <button
            type="button"
            onClick={() => table.nextPage()}
            disabled={!table.getCanNextPage()}
            className="px-2 py-1 rounded border text-gray-700 disabled:opacity-40 disabled:cursor-not-allowed"
          >
            Siguiente
          </button>

          <label className="flex items-center gap-1 text-gray-600">
            Filas
            <select
              value={paginationState.pageSize}
              onChange={(event) => handlePageSizeSelect(Number(event.target.value))}
              className="border rounded px-2 py-1 bg-white"
            >
              {normalizedPageSizeOptions.map((size) => (
                <option key={size} value={size}>
                  {size}
                </option>
              ))}
            </select>
          </label>
        </div>
      </div>
    </div>
  );
}
