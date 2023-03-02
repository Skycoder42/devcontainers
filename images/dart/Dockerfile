FROM mcr.microsoft.com/vscode/devcontainers/base:latest

RUN sudo apt-get -y update  &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install apt-transport-https &&\
  wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg &&\
  echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list &&\
  sudo apt-get -y update &&\
  sudo apt-get -y install dart lcov &&\
  sudo -u vscode dart --disable-analytics &&\
  sudo -u vscode dart pub global activate melos

ENV PATH="$PATH:/usr/lib/dart/bin:/home/vscode/.pub-cache/bin"
