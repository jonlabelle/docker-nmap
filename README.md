# nmap

Minimal (\~8 MB compressed) Docker image ([alpine:latest](https://hub.docker.com/_/alpine)) with [Nmap](https://nmap.org/) installed.

- [jonlabelle/nmap](https://hub.docker.com/r/jonlabelle/nmap) on Docker Hub
- [Dockerfile](https://github.com/jonlabelle/docker-alpine-nmap/blob/master/Dockerfile) on GitHub

## Usage

```bash
docker run [run options] jonlabelle/nmap [nmap options] <nmap target>
```

> See official [Nmap Reference Guide](https://nmap.org/book/man-briefoptions.html) for options summary.

## Example

To run nmap and scan local network `10.0.10.0/24`:

```bash
docker run --rm jonlabelle/nmap -v 10.0.10.0/24
```

> `--rm` will automatically remove the container upon exiting.
