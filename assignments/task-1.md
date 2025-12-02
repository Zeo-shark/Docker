# Task 1 — Build & Run (Beginner)

Objective: Build the Docker image and run the webapp. Confirm the app is reachable.

Instructions:
1. From the repo root (`d:\Docker`) build the image:

```powershell
docker build -t student-node-webapp .
```

2. Run the container and map port 3000:

```powershell
docker run --rm -p 3000:3000 student-node-webapp
```

3. Open `http://localhost:3000` and take a screenshot (or copy the HTML title) as proof.

Deliverable: A short note with the `docker images` output showing the new image and the URL confirming the app served content.

Hints:
- If the image build is slow, check which step takes longest (usually dependency install).
- Use `docker build --no-cache -t name .` to force a full rebuild.
