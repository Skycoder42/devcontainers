FROM mcr.microsoft.com/vscode/devcontainers/base:latest

RUN sudo apt-get -y update &&\
  sudo apt-get -y upgrade &&\
  sudo apt-get -y install clang cmake ninja-build pkg-config libgtk-3-dev chromium lcov &&\
  sudo -u vscode git clone https://github.com/flutter/flutter.git -b stable /home/vscode/flutter &&\
  sudo -u vscode /home/vscode/flutter/bin/flutter config --no-analytics &&\
  sudo -u vscode /home/vscode/flutter/bin/flutter config --enable-linux-desktop &&\
  sudo -u vscode /home/vscode/flutter/bin/flutter config --enable-web &&\
  sudo -u vscode /home/vscode/flutter/bin/dart --disable-analytics &&\
  sudo -u vscode /home/vscode/flutter/bin/dart pub global activate melos

COPY google-chrome.sh /usr/local/bin/google-chrome

ENV PATH="$PATH:/home/vscode/flutter/bin:/home/vscode/.pub-cache/bin"
