# Task 4 — Multi-stage Build (Advanced)

Objective: Convert the provided Dockerfile into a multi-stage build that installs dev dependencies/build assets in a builder stage, then produces a smaller final image.

Instructions:
1. Create a new file `Dockerfile.multi` or modify the existing Dockerfile to follow multi-stage best practices. Example approach:
   - Stage 1 (builder): use a fuller Node image to install dependencies and build assets.
   - Stage 2 (runtime): use `node:18-alpine` and copy only the needed `node_modules` and `public` files.

2. Build and tag the new image:

```powershell
docker build -f Dockerfile.multi -t multi-node-webapp .
```

3. Compare sizes:

```powershell
docker images
```

Deliverable: Submit your `Dockerfile.multi` and the `docker images` output showing reduced size.

Hints:
- If your app doesn't need compilation, the multi-stage benefit may be smaller but still helpful for removing dev-only files.
- Try using `npm ci --only=production` in the final stage.
