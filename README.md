# Docker Nmap Image

[![Docker Pulls](https://img.shields.io/docker/pulls/jonlabelle/nmap.svg)][dockerhub]

Minimal (11 MB compressed) Docker image ([alpine:latest](https://hub.docker.com/_/alpine)) with [Nmap](https://nmap.org/) Network Security Scanner installed.

- [jonlabelle/nmap](https://hub.docker.com/r/jonlabelle/nmap) on Docker Hub
- [Dockerfile](https://github.com/jonlabelle/docker-nmap/blob/master/Dockerfile) on GitHub

## Usage

```bash
docker run [run options] jonlabelle/nmap [nmap options] <nmap target>
```

> See official [Nmap Reference Guide](https://nmap.org/book/man-briefoptions.html) for options summary.

## Examples

To [run](https://docs.docker.com/engine/reference/commandline/run/) *nmap* and scan local network `10.0.10.0/24`:

```bash
docker run --rm jonlabelle/nmap -v 10.0.10.0/24
```

> `--rm` will automatically remove the container upon exiting.

To perform TLS cipher scan against a host to determine supported ciphers and SSL/TLS protocols:

```bash
docker run --rm jonlabelle/nmap --script ssl-enum-ciphers <host> -p 443
```

[dockerhub]: https://hub.docker.com/r/jonlabelle/nmap
