#!/bin/bash
set -eo pipefail

/tmp/scripts/common/pre.sh clang cmake ninja-build pkg-config libgtk-3-dev chromium
mv /tmp/scripts/flutter/google-chrome.sh /usr/local/bin/google-chrome

sudo -u vscode /tmp/scripts/flutter/flutter.install.sh
sudo -u vscode /home/vscode/flutter/bin/dart --disable-analytics
sudo -u vscode /home/vscode/flutter/bin/flutter config --no-analytics

/tmp/scripts/common/post.sh /home/vscode/flutter/bin/flutter
