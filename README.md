# Docker Nmap

[![cd](https://github.com/jonlabelle/docker-nmap/actions/workflows/cd.yml/badge.svg?branch=master)](https://github.com/jonlabelle/docker-nmap/actions/workflows/cd.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/jonlabelle/nmap.svg)][dockerhub]

> Minimal Docker image ([alpine:edge]) with [Nmap](https://nmap.org/) Network Security Scanner pre-installed.

- [jonlabelle/nmap](https://hub.docker.com/r/jonlabelle/nmap) on Docker Hub
- [Dockerfile](https://github.com/jonlabelle/docker-nmap/blob/master/Dockerfile) on GitHub

## Usage

```bash
docker run [docker run options ...] jonlabelle/nmap [nmap options ...] <nmap target>
```

> See official [Docker run](https://docs.docker.com/engine/reference/commandline/run/#options) and [Nmap](https://nmap.org/book/man-briefoptions.html) docs for additional options.

## Examples

To scan for devices on local target `10.0.10.0/24`:

```bash
docker run --rm jonlabelle/nmap -v 10.0.10.0/24
```

To enumerate supported TLS/SSL ciphers and protocols on `<target>`:

```bash
docker run --rm jonlabelle/nmap --script ssl-enum-ciphers <target> -p 443
```

## Additional Nmap resources

- [Nmap Helper](https://competent-goldberg-e5eefe.netlify.app). Generate Nmap commands.
- [threader3000](https://github.com/dievus/threader3000). Multi-threaded Python port scanner with Nmap integration for use on Linux or Windows.

## Related

- [jonlabelle/network-tools](https://hub.docker.com/r/jonlabelle/network-tools). Minimal Docker image with various network tools pre-installed.

[dockerhub]: https://hub.docker.com/r/jonlabelle/nmap
[alpine:edge]: https://hub.docker.com/_/alpine?tab=tags&page=1&ordering=last_updated&name=edge
