# Task 3 — Environment Variables (Intermediate)

Objective: Configure the app to use an environment variable to change behavior (for example, a greeting or a port), and run the container with an `.env` file.

Instructions:
1. The sample app already reads `process.env.PORT` for the port. For this task, add a new variable `APP_GREETING` and use it in `public/index.html` (or serve it via a small API change).

2. Create an `.env` file locally with:

```text
APP_GREETING=Hello from the assignment
```

3. Run the container passing the env file:

```powershell
docker run --rm --env-file .env -p 3000:3000 student-node-webapp
```

4. Verify the greeting appears in the UI or via an API call.

Deliverable: Show the `.env` file and the command used to run the container, plus a screenshot or curl/Invoke-RestMethod output showing the greeting.

Hints:
- On Windows, ensure `.env` uses LF or CRLF consistently for Docker to read it.
- Alternatively pass a single env var with `-e APP_GREETING="Hi"`.
