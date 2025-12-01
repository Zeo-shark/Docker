# Docker Node Webapp

This is a minimal Node.js web application designed for teaching Docker. It uses Express to serve static files and includes a simple health endpoint at `/api/health`.

What you get:
- `src/index.js` — Express server
- `public/` — Static web UI (HTML + CSS)
- `Dockerfile` — Build image for the app
- `package.json` — Node metadata and start script

How to build and run (PowerShell / Windows):

Build the Docker image:

```powershell
docker build -t docker-node-webapp .
```

Run the container and map port 3000:

```powershell
docker run --rm -p 3000:3000 docker-node-webapp
```

Open your browser at: http://localhost:3000

API health check:

```powershell
Invoke-RestMethod http://localhost:3000/api/health
```

Notes:
- The example pins Node 18 in the Docker base image for reproducibility.
- The Dockerfile installs production dependencies (useful for teaching separation of dev vs prod).

Next steps / teaching ideas:
- Add environment configuration with `.env` and demonstrate `--env-file` or `-e` flags
- Show multi-stage builds to separate dev deps and shrink final image
- Add a CI workflow that builds and pushes the image

Enjoy Learning Docker!
