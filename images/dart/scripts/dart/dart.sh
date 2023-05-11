#!/bin/bash
set -eo pipefail

/tmp/scripts/common/pre.sh

/tmp/scripts/dart/dart.install.sh
sudo -u vscode /opt/dart-sdk/bin/dart --disable-analytics

/tmp/scripts/common/post.sh /opt/dart-sdk/bin/dart
