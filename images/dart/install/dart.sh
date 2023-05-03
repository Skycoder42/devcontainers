#!/bin/bash
set -eo pipefail

case "$TARGETPLATFORM" in
  linux/amd64 | linux/amd64/*)
    dart_platform=x64
  ;;
  linux/arm64 | linux/arm64/*)
    dart_platform=arm64
  ;;
  linux/arm | linux/arm/*)
    dart_platform=arm
  ;;
  linux/386 | linux/386/*)
    dart_platform=ia32
  ;;
  *)
    echo "UNSUPPORTED DOCKER PLATFORM: $TARGETPLATFORM"
    exit 1
  ;;
esac

echo "Detected dart platform for $TARGETPLATFORM as: $dart_platform"

wget \
  "https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-$dart_platform-release.zip" \
  -O /tmp/dartsdk.zip
sudo unzip /tmp/dartsdk.zip -d /opt
rm -f /tmp/dartsdk.zip
