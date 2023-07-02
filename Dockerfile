# builder
FROM node:16-alpine AS builder
COPY package.json package-lock.json ./
RUN npm ci
COPY . ./
RUN --mount=type=secret,id=github_token \
  GITHUB_TOKEN=$(cat /run/secrets/github_token) \
  npm run build

# runner
FROM node:16-alpine AS app
WORKDIR /app

COPY --from=builder package.json package-lock.json ./
RUN npm ci --omit=dev

COPY --from=builder views ./views/
COPY --from=builder dist/website ./dist/website/
COPY --from=builder libraries.json server.js ./

CMD node server.js
