import { useEffect, useState } from "react";
import Modal from "@/components/ui/Modal";
import { FormField } from "@/components/ui/FormField";
import type { Career } from "@/types/Career";
import type { College } from "@/types/College";
import type { Interest } from "@/types/Interest";
import type { CountryOption } from "@/services/countries";
import { capitalize } from "../utils";
import { createEmptyUserForm, type UserFormValues } from "../types";

type UserFormModalProps = {
  isOpen: boolean;
  isEditing: boolean;
  loading: boolean;
  initialData?: UserFormValues;
  countries: CountryOption[];
  careers: Career[];
  colleges: College[];
  interests: Interest[];
  onClose: () => void;
  onSubmit: (data: UserFormValues) => void;
};

export const UserFormModal = ({
  isOpen,
  isEditing,
  loading,
  initialData,
  countries,
  careers,
  colleges,
  interests,
  onClose,
  onSubmit,
}: UserFormModalProps) => {
  const [form, setForm] = useState<UserFormValues>(initialData ?? createEmptyUserForm());

  useEffect(() => {
    if (isOpen) {
      setForm(initialData ?? createEmptyUserForm());
    }
  }, [initialData, isOpen]);

  const toggleInterest = (interestId: number, checked: boolean) => {
    setForm((prev) => ({
      ...prev,
      interestIds: checked ? [...prev.interestIds, interestId] : prev.interestIds.filter((id) => id !== interestId),
    }));
  };

  const handleSubmit = () => onSubmit(form);

  return (
    <Modal isOpen={isOpen} onClose={onClose} title={isEditing ? "Editar usuario" : "Nuevo usuario"} size="lg">
      <div className="space-y-4">
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <FormField label="Usuario" htmlFor="username">
            <input
              id="username"
              value={form.username}
              onChange={(e) => setForm((prev) => ({ ...prev, username: e.target.value }))}
              className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
              placeholder="Nombre de usuario"
            />
          </FormField>
          <FormField label="Email" htmlFor="email">
            <input
              id="email"
              type="email"
              value={form.email}
              onChange={(e) => setForm((prev) => ({ ...prev, email: e.target.value }))}
              className="w-full border rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
              placeholder="correo@dominio.com"
            />
          </FormField>
          <FormField label="País">
            <select
              value={form.country}
              onChange={(e) => setForm((prev) => ({ ...prev, country: e.target.value }))}
              className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="" disabled>Selecciona un país</option>
              {countries.map((country) => (
                <option key={country.code} value={country.value}>{country.name}</option>
              ))}
            </select>
          </FormField>
          <FormField label="Carrera">
            <select
              value={form.careerId}
              onChange={(e) => {
                const value = e.target.value;
                setForm((prev) => ({ ...prev, careerId: value === "" ? "" : Number(value) }));
              }}
              className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="" disabled>Selecciona una carrera</option>
              {careers.map((career) => (
                <option key={career.id} value={career.id}>{career.name}</option>
              ))}
            </select>
          </FormField>
          <FormField label="Universidad">
            <select
              value={form.collegeId}
              onChange={(e) => {
                const value = e.target.value;
                setForm((prev) => ({
                  ...prev,
                  collegeId: value === "" ? "" : Number(value),
                }));
              }}
              className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="" disabled>Selecciona una universidad</option>
              {colleges.map((college) => (
                <option key={college.id} value={college.id}>{college.name}</option>
              ))}
            </select>
          </FormField>
          {isEditing && (
            <FormField label="Estado del usuario">
              <select
                value={form.isActive ? "true" : "false"}
                onChange={(e) => setForm((prev) => ({ ...prev, isActive: e.target.value === "true" }))}
                className="w-full border rounded-md px-3 py-2 bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
              >
                <option value="true">Activo</option>
                <option value="false">Inactivo</option>
              </select>
            </FormField>
          )}
        </div>
        <div>
          <p className="block text-sm text-gray-700 mb-2">Intereses (Selecciona uno o más)</p>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
            {interests.map((interest) => {
              const checked = form.interestIds.includes(interest.id);
              return (
                <label
                  key={interest.id}
                  className={`flex items-center gap-2 border rounded-md px-3 py-2 cursor-pointer ${checked ? "border-blue-400 bg-blue-50" : "border-gray-200 hover:border-gray-300"}`}
                >
                  <input
                    type="checkbox"
                    checked={checked}
                    onChange={(e) => toggleInterest(interest.id, e.target.checked)}
                    className="accent-blue-600"
                  />
                  <span className="text-sm text-gray-700">{capitalize(interest.name)}</span>
                </label>
              );
            })}
          </div>
        </div>
        <div className="flex justify-end gap-2">
          <button onClick={onClose} className="px-3 py-2 rounded-md border">Cancelar</button>
          <button onClick={handleSubmit} disabled={loading} className="px-3 py-2 rounded-md bg-blue-600 text-white disabled:opacity-60">Guardar</button>
        </div>
      </div>
    </Modal>
  );
};
