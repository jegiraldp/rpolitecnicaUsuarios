import { v4 as uuid } from "uuid"
export interface College {
    id: string;
    name: string;
}

interface InitialData {
    college: College[];
}

export const initialData: InitialData = {
    college: [
        {
            id: uuid(),
            name: 'Engineering College',
        },
        {
            id: uuid(),
            name: 'Arts College',
        },
        {
            id: uuid(),
            name: 'Commerce College',
        },
    ],
}