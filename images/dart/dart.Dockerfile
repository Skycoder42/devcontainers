FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY scripts /tmp/scripts
RUN /tmp/scripts/dart/dart.sh

ENV PATH="/home/vscode/.pub-cache/bin:/opt/dart-sdk/bin:$PATH"
