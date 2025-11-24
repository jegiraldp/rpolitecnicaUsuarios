export interface College {
    id: number;
    name: string;
}

interface InitialData {
    college: College[];
}

export const initialData: InitialData = {
    college: [
        {
            id: 1,
            name: 'Engineering College',
        },
        {
            id: 2,
            name: 'Arts College',
        },
        {
            id: 3,
            name: 'Commerce College',
        },
    ],
}
