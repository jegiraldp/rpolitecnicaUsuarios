import { useState } from "react";
import { ChevronDown, ChevronUp } from "lucide-react";
import { PlugIcon } from "@/utils/plugins/plugicon";

export interface FilterOption { label: string; value: string }
export interface FilterField {
  name: string;           // Ej: "country"
  label: string;          // Ej: "País"
  placeholder?: string;   // Ej: "Buscar por país..."
  type?: "text" | "number" | "email" | "select" | "multiselect";
  options?: FilterOption[]; // Para select/multiselect
}

interface FiltersPanelProps {
  title?: string;                             // Ej: "Filtros"
  fields: FilterField[];                      // Lista de campos dinámicos
  values: Record<string, string | string[]>;  // Estado actual de los filtros
  onChange: (name: string, value: string | string[]) => void;
  onSearch: () => void;
  onClear: () => void;
  defaultOpen?: boolean;
}

export default function FiltersPanel({
  title = "Filtros",
  fields,
  values,
  onChange,
  onSearch,
  onClear,
  defaultOpen = false,
}: FiltersPanelProps) {
  const [open, setOpen] = useState(defaultOpen);
  const [openMulti, setOpenMulti] = useState<string | null>(null);

  return (
    <div className="bg-white border rounded-xl shadow-sm transition-all">
      <div
        className="flex justify-between items-center px-4 py-3 cursor-pointer select-none"
        onClick={() => setOpen(!open)}
      >
        <div className="flex items-center gap-2">
          <PlugIcon name="filter" size={16} className="text-blue-600" />
          <h3 className="font-semibold text-slate-900">{title}</h3>
        </div>
        {open ? (
          <ChevronUp size={16} className="text-slate-500" />
        ) : (
          <ChevronDown size={16} className="text-slate-500" />
        )}
      </div>

      {open && (
        <div className="px-6 pb-6 border-t bg-slate-50/40 animate-fadeIn rounded-b-xl">
          <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mt-4">
            {fields.map((field) => {
              const value = values[field.name];
              const commonLabel = <label className="block text-sm text-slate-700 mb-1">{field.label}</label>;
              if (field.type === 'select') {
                return (
                  <div key={field.name}>
                    {commonLabel}
                    <select
                      value={(value as string) || ''}
                      onChange={(e) => onChange(field.name, e.target.value)}
                      className="w-full border rounded-md p-2 text-sm bg-white focus:outline-blue-500"
                    >
                      <option value="">Selecciona una opción</option>
                      {(field.options || []).map((opt) => (
                        <option key={opt.value} value={opt.value}>{opt.label}</option>
                      ))}
                    </select>
                  </div>
                )
              }
              if (field.type === 'multiselect') {
                const selected = Array.isArray(value) ? (value as string[]) : [];
                const labels = (field.options || [])
                  .filter(o => selected.includes(o.value))
                  .map(o => o.label);
                return (
                  <div key={field.name} className="relative">
                    {commonLabel}
                    <button
                      type="button"
                      onClick={() => setOpenMulti(prev => prev === field.name ? null : field.name)}
                      className="w-full border rounded-md p-2 text-sm bg-white text-left flex items-center justify-between"
                    >
                      <span className="truncate">
                        {labels.length ? labels.join(', ') : (field.placeholder || 'Selecciona...')}
                      </span>
                      <ChevronDown size={16} className="text-slate-500" />
                    </button>
                    {openMulti === field.name && (
                      <div className="absolute z-50 mt-1 w-full bg-white border rounded-md shadow-lg max-h-56 overflow-auto p-2">
                        {(field.options || []).map(opt => {
                          const checked = selected.includes(opt.value);
                          return (
                            <label key={opt.value} className={`flex items-center gap-2 px-2 py-1 rounded cursor-pointer ${checked ? 'bg-blue-50' : ''}`}>
                              <input
                                type="checkbox"
                                checked={checked}
                                onChange={(e) => {
                                  const isOn = e.target.checked;
                                  const next = isOn ? [...selected, opt.value] : selected.filter(v => v !== opt.value);
                                  onChange(field.name, next);
                                }}
                                className="accent-blue-600"
                              />
                              <span className="text-sm text-gray-700">{opt.label}</span>
                            </label>
                          );
                        })}
                        <div className="flex justify-end mt-2">
                          <button type="button" className="text-sm text-blue-600 hover:text-blue-700" onClick={() => setOpenMulti(null)}>Cerrar</button>
                        </div>
                      </div>
                    )}
                  </div>
                )
              }
              return (
                <div key={field.name}>
                  {commonLabel}
                  <input
                    type={field.type || 'text'}
                    placeholder={field.placeholder}
                    value={(value as string) || ''}
                    onChange={(e) => onChange(field.name, e.target.value)}
                    className="w-full border rounded-md p-2 text-sm focus:outline-blue-500"
                  />
                </div>
              )
            })}
          </div>

          <div className="flex justify-end gap-3 mt-6 pt-3 border-t">
            <button
              onClick={onClear}
              className="px-4 py-2 text-sm text-slate-600 hover:text-slate-800"
            >
              Limpiar filtros
            </button>
            <button
              onClick={onSearch}
              className="px-4 py-2 text-sm bg-blue-600 text-white rounded-md hover:bg-blue-700 shadow-sm"
            >
              Buscar
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
