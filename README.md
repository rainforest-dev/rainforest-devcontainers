# dev-containers

## With `Dockerfile`

```json
{
  ...,
  "runArgs": ["--gpus=all"]
  ...,
}
```

## With `docker-compose.yml`

- make sure [nvidia-container-runtime](https://github.com/NVIDIA/nvidia-container-runtime)
- create runtime in `/etc/docker/daemon.json` then `sudo systemctl daemon-reload` and `sudo systemctl restart docker`

```json
{
  "runtimes": {
    "nvidia": {
      "path": "/usr/bin/nvidia-container-runtime",
      "runtimeArgs": []
    }
  }
}
```

```yml
services:
  your_service:
    runtime: nvidia
    environment:
      - NVIDIA_VISIBLE_DEVICES=all
```
