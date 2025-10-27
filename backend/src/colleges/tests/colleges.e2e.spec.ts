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

});
