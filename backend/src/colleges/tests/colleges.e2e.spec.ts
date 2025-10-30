import { Test, TestingModule } from '@nestjs/testing';
import { CollegesService } from '../colleges.service';
import { INestApplication } from '@nestjs/common';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { SeedService } from '../../common/seed/seedService';
import { TestDatabaseManager } from '../../common/tests/test-database';
import { CollegeMother } from './colleges.mother';
import * as request from 'supertest';

describe('CollegesService', () => {
    let module: TestingModule;
    let app: INestApplication
    let services: TestServices
    let repositories: TestRepositories
    let collegeMother: CollegeMother

    beforeAll(async () => {
        const testDB = await TestDatabaseManager.initializeE2E()
        app = testDB.app
        module = testDB.module
        collegeMother = new CollegeMother(
            module.get<CollegesService>(CollegesService),
        )

        services = TestHelpers.getServices(module)
        repositories = TestHelpers.getRepositories(module)
    })

    afterAll(async () => {
        await TestDatabaseManager.cleanUp();
    });

    afterEach(async () => {
        await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
    });

    describe('POST /colleges', () => {
        it("should create a new college", async () => {
            const response = await request(app.getHttpServer())
                .post('/colleges')
                .send(CollegeMother.dto())
            expect(response.status).toBe(201)
            expect(response.body.name).toBe(CollegeMother.dto().name)
        })
        it("should throw an error if the college name already exists", async () => {
            const [college] = await collegeMother.createMany(1);
            const response = await request(app.getHttpServer())
                .post('/colleges')
                .send({ ...CollegeMother.dto(), name: college.name })
            expect(response.status).toBe(400)
        })

    })

    describe('GET /colleges', () => {
        it('should list colleges with pagination', async () => {
            const res = await request(app.getHttpServer())
                .get('/colleges?page=1&limit=2')
                .send();
            expect(res.status).toBe(200);
            expect(Array.isArray(res.body)).toBe(true);
            expect(res.body.length).toBe(2);
        });

        it('should filter by name (contains)', async () => {
            const res = await request(app.getHttpServer())
                .get('/colleges?name=college-1')
                .send();
            expect(res.status).toBe(200);
            expect(Array.isArray(res.body)).toBe(true);
            expect(res.body.length).toBe(1);
            expect(res.body[0].name).toBe('college-1');
        });
    });

    describe('GET /colleges/:id', () => {
        it('should return a college by id', async () => {
            const [anyCollege] = await collegeMother.createMany(1, { name: 'some-college' });
            const res = await request(app.getHttpServer())
                .get(`/colleges/${anyCollege!.id}`)
                .send();
            expect(res.status).toBe(200);
            expect(res.body?.id).toBe(anyCollege!.id);
        });
    });

    describe('PATCH /colleges/:id', () => {
        it('should update a college name', async () => {
            const [anyCollege] = await collegeMother.createMany(1, { name: 'old-name' });
            const res = await request(app.getHttpServer())
                .patch(`/colleges/${anyCollege!.id}`)
                .send({ name: 'Updated Name' });
            expect(res.status).toBe(200);
            expect(res.body?.name).toBe('updated name');
            expect(res.body?.updatedAt).toBeDefined();
        });

        it('should reject duplicate name', async () => {
            const [a] = await collegeMother.createMany(1, { name: 'a-college' });
            const [b] = await collegeMother.createMany(1, { name: 'b-college' });
            const res = await request(app.getHttpServer())
                .patch(`/colleges/${a!.id}`)
                .send({ name: b!.name });
            expect(res.status).toBe(400);
        });
    });

    describe('DELETE /colleges/:id', () => {
        it('should soft delete a college', async () => {
            const [anyCollege] = await collegeMother.createMany(1, { name: 'to-delete' });
            const res = await request(app.getHttpServer())
                .delete(`/colleges/${anyCollege!.id}`)
                .send();
            expect(res.status).toBe(200);
            expect(res.body?.isActive).toBe(false);
            expect(res.body?.deletedAt).toBeDefined();
        });
    });

});
