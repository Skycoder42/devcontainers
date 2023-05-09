FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY scripts /tmp/scripts
RUN sudo apt-get -y update  &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install lcov &&\
  /tmp/scripts/yq.sh &&\
  /tmp/scripts/osv-scanner.sh &&\
  /tmp/scripts/dart.sh &&\
  rm -rf /tmp/scripts

ENV PATH="/home/vscode/.pub-cache/bin:/opt/dart-sdk/bin:$PATH"
