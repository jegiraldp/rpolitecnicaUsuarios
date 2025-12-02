# Panel Revista Politécnica
Aplicacion web solicitada por el profesor Jorge Eliecer como version simplificada del sitio de la Revista Politecnica que hoy administra en OJS. Aqui se busca concentrar los datos con mejor experiencia de uso y visibilidad.

OJS es un sistema de codigo abierto para gestionar y publicar revistas academicas en linea. Permite administrar usuarios con roles (autor, revisor, etc.), recibir propuestas de articulos y decidir si se aceptan, rechazan o envian a revision.

Este proyecto nace para ofrecer una vista mas clara y rapida que OJS, agregando tareas que alla resultan enredadas o poco optimizadas. Por ahora incluye CRUD de usuarios, intereses, universidades, carreras y un dashboard basico. Mas abajo hay una lista de tareas pendientes; puedes revisarlas con el profesor y priorizar o proponer nuevas.


## Tech stack
- Backend: NestJS, TypeORM, MySQL/MariaDB (SQLite en tests), JWT.
- Frontend: React 18, Vite, TailwindCSS, React Router.
- Docker: `docker-compose` opcional para levantar base de datos y servicios.

## Estructura rápida
- `backend/`: API, entidades y módulos.
- `frontend/`: SPA y servicios HTTP.
- `dumps/`: datos de ejemplo SQL/TXT.
- `docker/` y `docker-compose.yaml`: ayuda para entornos locales.

## Requisitos previos
- Node.js 18+ y `yarn`.
- MySQL/MariaDB disponibles localmente (o usar Docker).
- Variables de entorno en `backend/.env` (ver ejemplo abajo).

## Arranque rápido (local)
1. Instalar dependencias raíz (workspace): `yarn`.
2. Backend: `yarn --cwd backend install`.
3. Frontend: `yarn --cwd frontend install`.
4. Crear `backend/.env`:
   ```
   DB_HOST=localhost
   DB_PORT=3306
   DB_USERNAME=user
   DB_PASSWORD=pass
   DB_DATABASE=revista_politecnica
   JWT_SECRET=changeme
   REFRESH_JWT_SECRET=changeme_too
   ```
5. Arrancar API: `yarn --cwd backend start` (o `start:dev` si existe).
6. Arrancar SPA: `yarn --cwd frontend dev` y abrir `http://localhost:5173`.

## Arranque con Docker (opcional)
```
docker-compose up -d
```

En `dumps/` estan los respaldos de la base de datos anterior y la actual. Puedes cargarlos manualmente en tu gestor de BD (DBeaver u otro).

## Scripts útiles
- Backend: `yarn --cwd backend start`, `yarn --cwd backend test`, `yarn --cwd backend test:e2e`.
- Frontend: `yarn --cwd frontend dev`, `yarn --cwd frontend build`.

## Flujo de autenticación
- Login devuelve `accessToken` y escribe `refresh_token` httpOnly.
- El frontend guarda la sesión en cookie propia (`panel-session`) y usa `Authorization: Bearer <accessToken>`.
- El refresh se pide automáticamente contra `/auth/refresh-token` usando la cookie httpOnly.
- Logout limpia la cookie de refresh en backend y borra la sesión local.

## Datos y seeds
- Dumps de referencia en `dumps/` (`users_dump.sql`, `publications_dump.txt`, etc.).
- Tests e2e del backend generan datos con factories en `backend/src/common/tests/factories`.

## Convenciones del repo
- Usernames/emails en minúsculas; IDs numéricos.
- Campos `createdAt/updatedAt` en UTC.
- Revisar `frontend/src/services/api/http.ts` para la configuración de base URL y tokens.
- Iconos centralizados en `frontend/src/assets/icons`.

## Próximas tareas / ideas para el equipo
- Módulo de recuperación y cambio de contraseña
  - Envío de correo electrónico con enlace seguro para restablecimiento.
  - Formulario para el cambio de contraseña desde el enlace recibido.
- Gestión de accesos por parte del administrador
  - Asignar acceso al sistema a los usuarios.
  - Revocar el acceso cuando sea necesario.
- Verificación de correo electrónico
  - Validar email al otorgar acceso y para confirmar identidad antes de usar el sistema.
- Bloqueo de cuenta por intentos fallidos
  - Bloquear tras 3 intentos fallidos de inicio de sesión y permitir desbloqueo con nueva contraseña por correo.
- Sistema de roles y permisos
  - Roles por usuario y permisos por módulo/acción.
- Sistema de auditorías
  - Registrar inicios de sesión, creación/edición/actualización/eliminación de registros y acciones relevantes.
- Módulo de visualización de auditorías
  - Consultar auditorías con filtros por usuario, fecha, tipo de acción, etc.
- Exportación de datos
  - Exportar información en Excel (.xlsx) y PDF (.pdf).
- Implementación de pruebas en el frontend
  - Pruebas automatizadas de componentes, flujos principales y validaciones críticas.
- Integración de pruebas del frontend en el pipeline
  - Ejecutar automáticamente los tests del frontend en CI para detectar fallos antes del despliegue.
- Módulo de visualización de publicaciones (artículos)
  - Tabla de artículos con previsualización (icono “ojo”) y render de HTML en la vista previa.
- Envío de artículos por correo a usuarios
  - Enviar artículos a uno o varios usuarios desde un modal en publicaciones, filtrando destinatarios y disparando el correo.
- Implementar alerts para las acciones del sitio web
  - Mostrar feedback (por ejemplo, “Creado correctamente”) al crear, consultar o actualizar recursos.
