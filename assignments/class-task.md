# Class Task — Quick Docker Demo (20–30 mins)

Goal: Show students how to build an image from the sample Node app and run it locally.

Steps for instructor/demo:

1. Open a terminal and build the image:

```powershell
docker build -t docker-node-webapp .
```

2. Run the container mapping port 3000:

```powershell
docker run --rm -p 3000:3000 docker-node-webapp
```

3. Point the students to `http://localhost:3000` and show the health endpoint `http://localhost:3000/api/health`.

Talking points:
- Image layers are cached during build; changing only source files can still reuse dependency layers.
- `EXPOSE` is documentation; `-p` publishes ports at runtime.
- Containers are ephemeral—`--rm` removes the container after it stops.

Instructor demo tasks (interactive):
- Show `docker images` and `docker ps` while container is running.
- Show how to stop the container and view logs with `docker logs <container-id>`.
