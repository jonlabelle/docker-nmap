# Docker Nmap

[![cd](https://github.com/jonlabelle/docker-nmap/actions/workflows/cd.yml/badge.svg)](https://github.com/jonlabelle/docker-nmap/actions/workflows/cd.yml)
[![docker pulls](https://img.shields.io/docker/pulls/jonlabelle/nmap?label=docker%20pulls)](https://hub.docker.com/r/jonlabelle/nmap)
[![image size](https://img.shields.io/docker/image-size/jonlabelle/nmap/latest?label=image%20size)](https://hub.docker.com/r/jonlabelle/nmap/tags)

> Minimal Docker image with [Nmap](https://nmap.org/) Network Security Scanner pre-installed.

## Usage

```bash
docker run [docker run options ...] jonlabelle/nmap [nmap options ...] <nmap target(s)>
```

> See official [Docker run](https://docs.docker.com/engine/reference/commandline/run/#options) and [Nmap](https://nmap.org/book/man-briefoptions.html) docs for additional options.

## Examples

> **NOTE:** To pull from [GitHub Container Registry], instead of [Docker Hub](https://hub.docker.com/r/jonlabelle/nmap),
> replace `jonlabelle/nmap` with `ghcr.io/jonlabelle/nmap` in the examples
> below.

To scan for devices on local target `10.0.10.0/24`:

```bash
docker run --rm -it jonlabelle/nmap -v 10.0.10.0/24
```

To enumerate supported TLS/SSL ciphers and protocols on `<target>`:

```bash
docker run --rm -it jonlabelle/nmap --script ssl-enum-ciphers <target> -p 443
```

To scan a range of network addresses for open SSH ports:

```bash
 docker run -it --rm jonlabelle/nmap -sT 10.0.10.1-100 -p 22
 ```

To show nmap help information:

```bash
docker run -it --rm jonlabelle/nmap --help
```

## Additional Nmap resources

- [Nmap Helper](https://competent-goldberg-e5eefe.netlify.app). Generate Nmap commands.
- [threader3000](https://github.com/dievus/threader3000). Multi-threaded Python port scanner with Nmap integration for use on Linux or Windows.

## My other Docker repos

- [jonlabelle/docker-network-tools](https://github.com/jonlabelle/docker-network-tools) — A Docker image with various network tools pre-installed
- [jonlabelle/docker-bfg](https://github.com/jonlabelle/docker-bfg) — Docker image for BFG Repo-Cleaner, a tool for removing large files and sensitive data from Git repository history

[github container registry]: https://github.com/users/jonlabelle/packages/container/package/nmap
