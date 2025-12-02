# Solution 2 — Inspect Image Layers & Size

Sample commands and expected observations:

```powershell
docker build -t inspect-node-webapp .
docker history inspect-node-webapp
```

Typical results:
- The dependency-install step will often be the largest layer (the `RUN npm ci` step).
- Changing only application files (after `npm ci` layer) will not change the dependency layer size; it will only create a small new layer for the copy step.

Instructor tip: Demonstrate `docker history` and `docker image inspect` to show metadata and layer IDs.
