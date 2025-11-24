# Revista Politécnica · Plataforma (Backend + Frontend)

Aplicación monorepo (NestJS + React) para gestionar usuarios, publicaciones, revisiones y dashboard de la Revista Politécnica.

## Estructura
- `backend/` – API NestJS (TypeORM, MySQL/SQLite para tests).
- `frontend/` – SPA React + Vite + Tailwind (usa `frontend/src/services/api`).
- `dumps/` – SQL de usuarios/publicaciones/reviews para importes puntuales.

## Requisitos
- Node.js 18+ (se usa pnpm/yarn/npm; el repo tiene `yarn.lock`).
- MySQL/MariaDB para runtime; SQLite se usa en pipelines/tests.
- Docker opcional: `docker-compose.yaml` presente.

## Instalación rápida
```bash
# instalar dependencias en raíz (opcional si quieres usar workspaces)
yarn

# backend
yarn --cwd backend install

# frontend
yarn --cwd frontend install
```

## Configuración de entorno (backend)
Copiar `.env.example` (si existe) o crear `.env` en `backend/` con variables como:
```
DB_HOST=localhost
DB_PORT=3306
DB_USERNAME=user
DB_PASSWORD=pass
DB_DATABASE=revista_politecnica
JWT_SECRET=changeme
```
En CI se usa SQLite; en local pon tus credenciales MySQL. Ajusta `ormconfig`/`TypeOrmModule` según corresponda.

## Scripts útiles
Backend:
```bash
yarn --cwd backend start        # Nest en modo dev
yarn --cwd backend test         # unit tests
yarn --cwd backend test:e2e     # e2e (usa SQLite)
```

Frontend:
```bash
yarn --cwd frontend dev         # servidor Vite
yarn --cwd frontend build       # build producción
```

Docker (opcional):
```bash
docker-compose up -d
```

## Funcionalidad clave
- **Autenticación**: JWT; los controladores tienen decorator `@Auth` excepto endpoints de lectura.
- **Usuarios**: CRUD, relación con carreras, intereses, publicaciones y reviews.
- **Publicaciones**: estados (`queued`, `published`, `declined`, `archived`), relación con autor.
- **Reviews**: recomendación (`accept`, `revisions`, `resubmit_elsewhere`, `decline`, `see_comments`, `no_recommendation`), relación con publicación y revisor.
- **Dashboard** (backend `/dashboard`):
  - KPIs: usuarios, artículos publicados, artículos revisados.
  - Top autores y top revisores.
  - Distribución por país (usuarios y publicaciones).
  - Detalle de artículos publicados/revisados por usuario: `GET /dashboard/details/:type(author|reviewer)/:userId`.

Frontend `DashboardPage` consume esos endpoints, muestra KPIs, gráficos (Recharts) y permite ver detalle por usuario.

## Datos y seeds
- `dumps/users_dump.sql`, `publications_dump.txt`, `publication_reviews_dump.txt` para importes manuales.
- Factories de tests: `backend/src/common/tests/factories/*` generan usuarios, publicaciones y reviews para e2e.
- Seed cleanup asegura orden correcto de borrado (publication_reviews → publications → users).

## Convenciones
- Identificadores numéricos (sin UUID).
- Campos `createdAt/updatedAt` en UTC (MySQL `datetime`).
- Emails/usernames en minúscula (hooks en entidades).
- Relaciones perezosas salvo algunas con `eager` puntuales (author/reviewer en publicaciones y reviews en tests).

## Problemas comunes
- **`sql_require_primary_key`** en Render/MySQL: asegúrate de que cada tabla tenga PK (todas las tablas del esquema ya la tienen).
- **Restricciones FK en tests**: se usa SQLite; verifica orden de borrado (ya manejado en `SeedService`).
- **Iconos en frontend**: `PlugIcon` usa `frontend/src/assets/icons/index.ts`; añade ahí nuevos SVGs y usa `name` como string.

## Cómo contribuir
1) Crea rama, implementa cambios.
2) Corre linters/tests relevantes.
3) Adjunta instrucciones de setup si afectan envs.

## Rutas de referencia
- Backend:
  - `/dashboard` – métricas principales.
  - `/dashboard/details/:type/:userId` – detalle de artículos publicados o revisados.
  - Resto de CRUDs en módulos `users`, `careers`, `interests`, `colleges`.
- Frontend:
  - `frontend/src/modules/dashboard/DashboardPage.tsx` – Dashboard.
  - `frontend/src/modules/users/UsersPage.tsx` – Gestión de usuarios.

## Notas finales
Si cambias el esquema, actualiza también:
- Entidades TypeORM en `backend/src/**/entities`.
- Factories de tests y seeds.
- Tipos y DTOs en el frontend (`frontend/src/types` y servicios API).
