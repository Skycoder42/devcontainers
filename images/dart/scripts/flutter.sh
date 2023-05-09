#!/bin/bash
git clone https://github.com/flutter/flutter.git -b stable /home/vscode/flutter

/home/vscode/flutter/bin/flutter config --no-analytics
/home/vscode/flutter/bin/flutter config --enable-linux-desktop
/home/vscode/flutter/bin/flutter config --enable-web
/home/vscode/flutter/bin/flutter precache --universal --linux --web

/home/vscode/flutter/bin/dart --disable-analytics
/home/vscode/flutter/bin/dart pub global activate melos
