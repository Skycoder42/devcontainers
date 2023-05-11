#!/bin/bash
# $1: path to flutter/dart
set -eo pipefail

binary="$1"

sudo -u vscode "$binary" pub global activate melos
sudo -u vscode "$binary" pub global activate cider

rm -rf /tmp/scripts
