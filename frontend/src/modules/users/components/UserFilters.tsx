import FiltersPanel, { type FilterField } from "@/components/ui/Filters";
import type { Career } from "@/types/Career";
import type { College } from "@/types/College";
import type { Interest } from "@/types/Interest";
import type { CountryOption } from "@/services/countries";
import type { UsersFiltersState } from "../types";

type UserFiltersProps = {
  filters: UsersFiltersState;
  countries: CountryOption[];
  careers: Career[];
  colleges: College[];
  interests: Interest[];
  onChange: (name: keyof UsersFiltersState, value: string | string[]) => void;
  onSearch: () => void;
  onClear: () => void;
};

export const UserFilters = ({
  filters,
  countries,
  careers,
  colleges,
  interests,
  onChange,
  onSearch,
  onClear,
}: UserFiltersProps) => {
  const countryOptions = [{ label: "Todos", value: "" }, ...countries.map((country) => ({ label: country.name, value: country.value }))];
  const careerOptions = [{ label: "Todas", value: "" }, ...careers.map((career) => ({ label: career.name, value: String(career.id) }))];
  const collegeOptions = [{ label: "Todas", value: "" }, ...colleges.map((college) => ({ label: college.name, value: String(college.id) }))];
  const interestOptions = [{ label: "Todos", value: "" }, ...interests.map((interest) => ({ label: interest.name, value: String(interest.id) }))];

  return (
    <FiltersPanel
      fields={[
        { name: "username", label: "Usuario", placeholder: "Buscar por usuario" },
        { name: "email", label: "Email", placeholder: "Buscar por email", type: "email" },
        { name: "countries", label: "País", type: "select", options: countryOptions },
        { name: "careers", label: "Carrera", type: "select", options: careerOptions },
        { name: "colleges", label: "Universidad", type: "select", options: collegeOptions },
        { name: "interests", label: "Interés", type: "select", options: interestOptions },
      ] as FilterField[]}
      values={filters}
      onChange={(name, value) => onChange(name as keyof UsersFiltersState, value)}
      onSearch={onSearch}
      onClear={onClear}
    />
  );
};
