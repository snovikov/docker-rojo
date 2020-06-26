# docker-rojo
Docker container for roblox rojo cli

# Usage

Pull the container

```bash
docker pull sadsamurai/rojo
```

Build your project

```bash
cd ~/your-project
docker run --rm -it -u $(id -u):$(id -g) \
  -v ${PWD}:/app:rw -w /app sadsamurai/rojo \
  rojo build --output project.rbxlx
```
