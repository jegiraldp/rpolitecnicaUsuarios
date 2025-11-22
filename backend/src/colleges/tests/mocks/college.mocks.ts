export const mockCollegeRepo = {
    count: jest.fn(),
    save: jest.fn(),
    create: jest.fn(),
    merge: jest.fn((entity: any, dto: any) => ({ ...entity, ...dto })),
    find: jest.fn(),
    findAndCount: jest.fn(),
    findOne: jest.fn(),
    remove: jest.fn(),
    delete: jest.fn(),
    createQueryBuilder: jest.fn(() => ({
        where: jest.fn().mockReturnThis(),
        andWhere: jest.fn().mockReturnThis(),
        skip: jest.fn().mockReturnThis(),
        take: jest.fn().mockReturnThis(),
        getMany: jest.fn(),
        getManyAndCount: jest.fn(),
    })),
}
