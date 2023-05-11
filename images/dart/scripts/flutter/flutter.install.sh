#!/bin/bash
FLUTTER_ROOT=$HOME/flutter

git clone https://github.com/flutter/flutter.git -b stable $FLUTTER_ROOT

$FLUTTER_ROOT/bin/flutter config --enable-linux-desktop
$FLUTTER_ROOT/bin/flutter config --enable-web
$FLUTTER_ROOT/bin/flutter precache --universal --linux --web
