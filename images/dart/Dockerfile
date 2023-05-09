FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY install /tmp/install
RUN sudo apt-get -y update  &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install lcov &&\
  /tmp/install/yq.sh &&\
  /tmp/install/osv-scanner.sh &&\
  /tmp/install/dart.sh &&\
  rm -rf /tmp/install

ENV PATH="/home/vscode/.pub-cache/bin:/opt/dart-sdk/bin:$PATH"
