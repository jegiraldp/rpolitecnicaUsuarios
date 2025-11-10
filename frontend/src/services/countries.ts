import { COUNTRIES } from "@/data/countries";

export interface CountryOption {
  code: string;
  name: string;
  value: string;
}

export const CountriesService = {
  async list(): Promise<CountryOption[]> {
    return COUNTRIES.map((c) => ({ ...c }));
  },
};
