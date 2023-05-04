#!/bin/bash
set -eo pipefail

yq_platform=$(echo "$TARGETPLATFORM" | cut -d/ -f2)
echo "Detected yq platform for $TARGETPLATFORM as: $yq_platform"

wget \
  "https://github.com/mikefarah/yq/releases/latest/download/yq_linux_$yq_platform.tar.gz" \
  -O /tmp/yq.tar.gz
mkdir -p /tmp/yq
tar -xvf /tmp/yq.tar.gz -C /tmp/yq
sudo mv "/tmp/yq/yq_linux_$yq_platform" /usr/local/bin/yq
rm -rf /tmp/yq.tar.gz /tmp/yq
