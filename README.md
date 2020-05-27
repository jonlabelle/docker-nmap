# nmap

Minimal docker image ([alpine:latest](https://hub.docker.com/_/alpine)) with [nmap](https://nmap.org/) installed.

- [jonlabelle/nmap](https://hub.docker.com/r/jonlabelle/nmap) on Docker Hub
- [Dockerfile](https://github.com/jonlabelle/docker-alpine-nmap/blob/master/Dockerfile)

## Usage

To run nmap and scan local network `10.0.10.0/24`:

```bash
docker run --rm jonlabelle/nmap -v 10.0.10.0/24
```

