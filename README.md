# docker-nmap

Minimal docker image ([alpine:latest](https://hub.docker.com/_/alpine)) with nmap installed.

## Usage

To run nmap and scan local network `10.0.10.0/24`:

```bash
docker run --rm jonlabelle/nmap -v 10.0.10.0/24
```
