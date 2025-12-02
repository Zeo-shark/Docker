# Solution 1 — Build & Run

Commands used:

```powershell
docker build -t student-node-webapp .
docker run --rm -p 3000:3000 student-node-webapp
```

Verification:
- `docker images` shows `student-node-webapp` with a size (varies by base image).
- Open `http://localhost:3000` to see the UI.

Notes for instructors:
- If students run into permission or network problems when installing dependencies, ensure Docker has access to the internet and the host's firewall isn't blocking.
