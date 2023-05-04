FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY install /tmp/install
RUN sudo apt-get -y update  &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install lcov &&\
  /tmp/install/dart.sh &&\
  /tmp/install/yq.sh &&\
  rm -rf /tmp/install

ENV PATH="/home/vscode/.pub-cache/bin:/opt/dart-sdk/bin:$PATH"
