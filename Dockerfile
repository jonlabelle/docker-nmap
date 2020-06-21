FROM alpine:latest

LABEL maintainer="contact@jonlabelle.com"
LABEL description="Minimal Docker image with Nmap Network Security Scanner pre-installed."

RUN apk -U upgrade && apk add --no-cache \
    nmap \
    nmap-scripts \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/nmap"]
