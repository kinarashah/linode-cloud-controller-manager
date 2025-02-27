# NB: We now cross-compile the go binary locally using the Makefile
FROM alpine:latest
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY dist/ccm-linode-linux-amd64 /
ENTRYPOINT ["/ccm-linode-linux-amd64"]
