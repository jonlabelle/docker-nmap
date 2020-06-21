FROM alpine:latest

LABEL maintainer="Jon LaBelle <contact@jonlabelle.com>" \
      description="Minimal Docker image with Nmap Network Security Scanner pre-installed." \
      org.label-schema.url="https://hub.docker.com/r/jonlabelle/nmap" \
      org.label-schema.vcs-url="https://github.com/jonlabelle/docker-nmap" \
      org.label-schema.vcs-type="Git"

RUN apk -U upgrade && apk add --no-cache \
    nmap \
    nmap-scripts \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/nmap"]
