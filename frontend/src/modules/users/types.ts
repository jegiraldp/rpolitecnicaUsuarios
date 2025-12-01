export type UsersFiltersState = {
  username: string;
  email: string;
  countries: string;
  colleges: string;
  careers: string;
  interests: string;
};

export type UserFormValues = {
  username: string;
  email: string;
  country: string;
  collegeId: number | "";
  careerId: number | "";
  interestIds: number[];
  isActive: boolean;
};

export const createEmptyUserForm = (): UserFormValues => ({
  username: "",
  email: "",
  country: "",
  collegeId: "",
  careerId: "",
  interestIds: [],
  isActive: true,
});
