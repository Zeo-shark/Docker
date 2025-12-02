# Solution 3 — Environment Variables

Approach:
1. Modify the app to read `APP_GREETING` and render it. A minimal change is to add an API endpoint in `src/index.js`:

```js
// add this route
app.get('/api/greeting', (req, res) => {
  res.json({ greeting: process.env.APP_GREETING || 'Hello from the app' });
});
```

2. Run with an `.env` file:

```powershell
# .env
APP_GREETING=Hello from the assignment

# run
docker run --rm --env-file .env -p 3000:3000 student-node-webapp
```

Verification:
```powershell
Invoke-RestMethod http://localhost:3000/api/greeting
```

Expected response:

```json
{ "greeting": "Hello from the assignment" }
```

Instructor notes: This demonstrates passing configuration at runtime and the difference between build-time and run-time configuration.
