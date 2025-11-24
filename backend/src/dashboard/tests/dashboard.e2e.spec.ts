import { TestingModule } from '@nestjs/testing';
import { INestApplication } from '@nestjs/common';
import { TestHelpers, TestRepositories, TestServices } from '../../common/tests/test-helpers';
import { TestDatabaseManager } from '../../common/tests/test-database';
import * as request from 'supertest';
import { SeedService } from 'src/common/tests/seed/seedService';

describe('CollegesService', () => {
    let module: TestingModule;
    let app: INestApplication
    let server: any;
    let services: TestServices
    let repositories: TestRepositories


    beforeAll(async () => {
        const testDB = await TestDatabaseManager.initializeE2E()
        app = testDB.app
        module = testDB.module
        server = app.getHttpAdapter().getInstance();
        services = TestHelpers.getServices(module)
        repositories = TestHelpers.getRepositories(module)
        await TestHelpers.setupTestData(module.get<SeedService>(SeedService));

    })

    afterAll(async () => {
        await TestDatabaseManager.cleanUp();
    });

    beforeEach(async () => {
        await TestHelpers.setupTestData(module.get<SeedService>(SeedService));
    });

    describe('GET /dashboard', () => {
        it("should return the dashboard data", async () => {
            const response = await request(server)
                .get('/dashboard')
            console.log(response.body)
            // expect(response.status).toBe(201)
            // expect(response.body.name).toBe(CollegeMother.dto().name)
        })


    })


});
