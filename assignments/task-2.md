# Task 2 — Inspect Image Layers & Size (Intermediate)

Objective: Learn how the Dockerfile creates image layers and how to inspect them.

Instructions:
1. Build the image with a clear name:

```powershell
docker build -t inspect-node-webapp .
```

2. List images and note the size:

```powershell
docker images inspect-node-webapp
```

3. Inspect the image history (layers):

```powershell
docker history inspect-node-webapp
```

Questions to answer in your submission:
- Which step(s) in the Dockerfile are the largest layers?
- How much did the final image size change if you modify only application files (no dependencies)?

Optional: Try squashing layers using a multi-stage build (task 4) and compare sizes.
