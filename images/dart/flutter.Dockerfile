FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY scripts /tmp/scripts
RUN sudo apt-get -y update &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install clang cmake ninja-build pkg-config libgtk-3-dev chromium lcov &&\
  /tmp/scripts/yq.sh &&\
  /tmp/scripts/osv-scanner.sh &&\
  mv /tmp/scripts /usr/local/bin/google-chrome &&\
  sudo -u vscode /tmp/scripts/flutter.sh &&\
  rm -rf /tmp/scripts

ENV PATH="/home/vscode/.pub-cache/bin:/home/vscode/flutter/bin:$PATH"
