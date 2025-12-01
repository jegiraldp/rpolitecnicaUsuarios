import { useEffect, useMemo, useState } from "react";
import { PageHeader } from "@/components/ui/PageHeader";
import { Card } from "@/components/ui/Card";
import { useAuth } from "@/services/auth/AuthProvider";
import { UsersService } from "@/services/users";
import { UsersAPI } from "@/services/api/usersService";
import { CollegesService } from "@/services/colleges";
import { CareersService } from "@/services/careers";
import { InterestsService } from "@/services/interests";
import { CountriesService } from "@/services/countries";
import type { User } from "@/types/User";
import type { College } from "@/types/College";
import type { Career } from "@/types/Career";
import type { Interest } from "@/types/Interest";
import type { CountryOption } from "@/services/countries";
import { UserFilters } from "./components/UserFilters";
import { UsersTable } from "./components/UsersTable";
import { UserFormModal } from "./components/UserFormModal";
import { ConfirmDeleteModal } from "./components/ConfirmDeleteModal";
import { UserDetailsModal } from "./components/UserDetailsModal";
import { createEmptyUserForm, type UserFormValues, type UsersFiltersState } from "./types";
import { toNumberOrUndefined } from "./utils";

const initialFilters: UsersFiltersState = {
  username: "",
  email: "",
  countries: "",
  colleges: "",
  careers: "",
  interests: "",
};

export default function UsersPage() {
  const { isAuthenticated } = useAuth();
  const [users, setUsers] = useState<User[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [filters, setFilters] = useState<UsersFiltersState>(initialFilters);
  const [pagination, setPagination] = useState({ page: 1, limit: 10, total: 0 });
  const [isFormOpen, setIsFormOpen] = useState(false);
  const [editingUser, setEditingUser] = useState<User | null>(null);
  const [viewUser, setViewUser] = useState<User | null>(null);
  const [colleges, setColleges] = useState<College[]>([]);
  const [careers, setCareers] = useState<Career[]>([]);
  const [interests, setInterests] = useState<Interest[]>([]);
  const [countries, setCountries] = useState<CountryOption[]>([]);
  const [confirmOpen, setConfirmOpen] = useState(false);
  const [toDelete, setToDelete] = useState<User | null>(null);

  const load = async (options?: { page?: number; limit?: number; filtersOverride?: UsersFiltersState }) => {
    const page = options?.page ?? pagination.page;
    const limit = options?.limit ?? pagination.limit;
    const activeFilters = options?.filtersOverride ?? filters;
    try {
      setLoading(true);
      setError(null);
      const response = await UsersService.list({
        page,
        limit,
        username: activeFilters.username || undefined,
        email: activeFilters.email || undefined,
        country: activeFilters.countries || undefined,
        collegeId: toNumberOrUndefined(activeFilters.colleges),
        careerId: toNumberOrUndefined(activeFilters.careers),
        interestId: toNumberOrUndefined(activeFilters.interests),
      });
      setUsers(response.data);
      setPagination({
        page: response.meta.page,
        limit: response.meta.limit,
        total: response.meta.total,
      });
    } catch (e: any) {
      setError(e?.message || "Error cargando usuarios");
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    load();
  }, []);

  useEffect(() => {
    const loadRefs = async () => {
      try {
        const [col, car, int, countryList] = await Promise.all([
          CollegesService.list({ page: 1, limit: 100 }),
          CareersService.list({ page: 1, limit: 100 }),
          InterestsService.list({ page: 1, limit: 100 }),
          CountriesService.list(),
        ]);
        setColleges(col.data);
        setCareers(car.data);
        setInterests(int.data);
        setCountries(countryList);
      } catch {
        setColleges([]);
        setCareers([]);
        setInterests([]);
        setCountries([]);
      }
    };
    loadRefs();
  }, []);

  const openCreate = () => {
    if (!isAuthenticated) return;
    setEditingUser(null);
    setIsFormOpen(true);
  };

  const handleEdit = (user: User) => {
    if (!isAuthenticated) return;
    setEditingUser(user);
    setIsFormOpen(true);
  };

  const handleShowUser = (user: User) => {
    setViewUser(user);
  };

  const handleSave = async (formData: UserFormValues) => {
    if (!isAuthenticated) return;
    if (!formData.username.trim() || !formData.email.trim()) return;
    try {
      setLoading(true);
      setError(null);
      const payload = {
        username: formData.username.trim(),
        email: formData.email.trim(),
        country: formData.country.trim() || undefined,
        collegeId: formData.collegeId === "" ? undefined : formData.collegeId,
        careerId: formData.careerId === "" ? undefined : formData.careerId,
        interestIds: formData.interestIds ?? [],
      };
      if (editingUser) {
        await UsersAPI.update(editingUser.id, {
          ...payload,
          isActive: formData.isActive,
        });
        await load();
      } else {
        await UsersAPI.create(payload);
        await load({ page: 1 });
      }
      setIsFormOpen(false);
      setEditingUser(null);
    } catch (e: any) {
      setError(e?.message || "Error guardando usuario");
    } finally {
      setLoading(false);
    }
  };

  const requestDelete = (user: User) => {
    if (!isAuthenticated) return;
    setToDelete(user);
    setConfirmOpen(true);
  };

  const confirmDelete = async () => {
    if (!isAuthenticated || !toDelete) return;
    try {
      setLoading(true);
      setError(null);
      await UsersAPI.deactivate(toDelete.id);
      await load();
      setConfirmOpen(false);
      setToDelete(null);
    } catch (e: any) {
      setError(e?.message || "Error desactivando usuario");
    } finally {
      setLoading(false);
    }
  };

  const handleFiltersChange = (name: keyof UsersFiltersState, value: string | string[]) => {
    setFilters((prev) => ({ ...prev, [name]: value as string }));
  };

  const clearFilters = () => {
    setFilters({ ...initialFilters });
    load({ page: 1, filtersOverride: initialFilters });
  };

  const formInitialData = useMemo(
    () => (editingUser ? buildFormFromUser(editingUser) : createEmptyUserForm()),
    [editingUser],
  );

  return (
    <div className="space-y-6">
      <PageHeader
        title="Usuarios"
        subtitle="Administra periodistas, acceso y pertenencias."
        actions={
          isAuthenticated ? (
            <button
              onClick={openCreate}
              className="bg-blue-600 text-white px-4 py-2 rounded-md text-sm hover:bg-blue-700 shadow-sm"
            >
              + Nuevo usuario
            </button>
          ) : null
        }
      />

      <UserFilters
        filters={filters}
        countries={countries}
        careers={careers}
        colleges={colleges}
        interests={interests}
        onChange={handleFiltersChange}
        onSearch={() => load({ page: 1 })}
        onClear={clearFilters}
      />

      {error && <div className="mb-2 text-sm text-red-600">{error}</div>}

      <Card className="overflow-hidden" contentClassName="p-0">
        <UsersTable
          data={users}
          isAuthenticated={isAuthenticated}
          pagination={{ pageIndex: pagination.page - 1, pageSize: pagination.limit, totalItems: pagination.total }}
          onPageChange={(pageIndex) => load({ page: pageIndex + 1 })}
          onPageSizeChange={(size) => load({ page: 1, limit: size })}
          onShow={handleShowUser}
          onEdit={handleEdit}
          onDelete={requestDelete}
        />
      </Card>

      <UserFormModal
        isOpen={isFormOpen}
        isEditing={Boolean(editingUser)}
        loading={loading}
        initialData={formInitialData}
        countries={countries}
        careers={careers}
        colleges={colleges}
        interests={interests}
        onClose={() => setIsFormOpen(false)}
        onSubmit={handleSave}
      />

      <ConfirmDeleteModal
        isOpen={confirmOpen}
        loading={loading}
        user={toDelete}
        onClose={() => setConfirmOpen(false)}
        onConfirm={confirmDelete}
      />

      <UserDetailsModal user={viewUser} isAuthenticated={isAuthenticated} onClose={() => setViewUser(null)} />
    </div>
  );
}

const buildFormFromUser = (user: User): UserFormValues => ({
  username: user.username || "",
  email: user.email || "",
  country: user.country || "",
  collegeId: user.college?.id || "",
  careerId: user.career?.id || "",
  interestIds: (user.interests || []).map((interest) => interest.id),
  isActive: user.isActive,
});
