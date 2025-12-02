# Solution 4 — Multi-stage Build

Example multi-stage Dockerfile (minimal):

```Dockerfile
# builder
FROM node:18 AS builder
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm ci
COPY . .
# (build steps would go here, if any)

# runtime
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app/package.json ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/public ./public
COPY --from=builder /app/src ./src
EXPOSE 3000
CMD ["npm","start"]
```

Build and compare sizes:

```powershell
docker build -f Dockerfile.multi -t multi-node-webapp .
docker images | Select-String multi-node-webapp
```

Instructor note: If your build step produces compiled assets (e.g., via webpack), building in the builder stage and copying final artifacts to a slim runtime image reduces final image size and removes dev-only files.
