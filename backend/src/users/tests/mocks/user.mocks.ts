export const mockUserRepo = {
  count: jest.fn(),
  save: jest.fn(),
  create: jest.fn(),
  merge: jest.fn((entity: any, dto: any) => ({ ...entity, ...dto })),
  find: jest.fn(),
  findOne: jest.fn(),
  createQueryBuilder: jest.fn(() => ({
    leftJoinAndSelect: jest.fn().mockReturnThis(),
    where: jest.fn().mockReturnThis(),
    andWhere: jest.fn().mockReturnThis(),
    skip: jest.fn().mockReturnThis(),
    take: jest.fn().mockReturnThis(),
    getMany: jest.fn(),
  })),
};

export const mockCollegeRepo = {
  findOne: jest.fn(),
};

export const mockCareerRepo = {
  findOne: jest.fn(),
};

export const mockInterestRepo = {
  find: jest.fn(),
};

