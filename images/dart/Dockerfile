FROM mcr.microsoft.com/vscode/devcontainers/base:latest
ARG TARGETPLATFORM

COPY install /tmp/install
RUN sudo apt-get -y update  &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install lcov &&\
  /tmp/install/dart.sh &&\
  /tmp/install/yq.sh &&\
  rm -rf /tmp/install &&\
  sudo -u vscode /opt/dart-sdk/bin/dart --disable-analytics &&\
  sudo -u vscode /opt/dart-sdk/bin/dart pub global activate melos

ENV PATH="/home/vscode/.pub-cache/bin:/opt/dart-sdk/bin:$PATH"
