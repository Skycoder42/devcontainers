FROM docker.io/library/golang:latest as build_osv
RUN go install github.com/google/osv-scanner/cmd/osv-scanner@latest

FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY --from=build_osv /go/bin/osv-scanner /usr/local/bin/osv-scanner

COPY scripts /tmp/scripts
RUN /tmp/scripts/dart/dart.sh

ENV PATH="/home/vscode/.pub-cache/bin:/opt/dart-sdk/bin:$PATH"
