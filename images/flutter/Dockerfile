FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY install /tmp/install
RUN sudo apt-get -y update &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install clang cmake ninja-build pkg-config libgtk-3-dev chromium lcov &&\
  /tmp/install/yq.sh &&\
  sudo -u vscode /tmp/install/flutter.sh &&\
  rm -rf /tmp/install

COPY google-chrome.sh /usr/local/bin/google-chrome

ENV PATH="/home/vscode/.pub-cache/bin:/home/vscode/flutter/bin:$PATH"
