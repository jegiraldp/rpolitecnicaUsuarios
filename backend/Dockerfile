# Build stage
FROM node:20.9.0-alpine AS builder
WORKDIR /app

# Copy root workspace files
COPY package.json yarn.lock ./
COPY backend/package.json ./backend/

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy backend source
COPY backend ./backend

# Build
WORKDIR /app/backend
RUN yarn build

# Production stage
FROM node:20.9.0-alpine
WORKDIR /app

# Copy root workspace files
COPY package.json yarn.lock ./
COPY backend/package.json ./backend/

# Install only production dependencies
RUN yarn install --frozen-lockfile --production

# Copy built files from builder
COPY --from=builder /app/backend/dist ./backend/dist

WORKDIR /app/backend
EXPOSE 4000
CMD ["yarn", "start"]