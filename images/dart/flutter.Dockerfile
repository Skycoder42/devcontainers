FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY scripts /tmp/scripts
RUN /tmp/scripts/flutter/flutter.sh

ENV PATH="/home/vscode/.pub-cache/bin:/home/vscode/flutter/bin:$PATH"
