 import 'reflect-metadata';
  import { NestFactory } from '@nestjs/core';
  import { AppModule } from '../../app.module';
  import { runSeed } from './run-seed';

  async function bootstrap() {
    const app = await NestFactory.create(AppModule);
    await runSeed(app); // recibe el contexto Nest para usar repos/services
    await app.close();
  }
  bootstrap().catch((err) => { console.error(err); process.exit(1); });