#!/bin/bash
set -eo pipefail

osv_scanner_version=$(git ls-remote --tags https://github.com/google/osv-scanner.git | cut -d/ -f3 | cut '-d^' -f1 | cut -dv -f2 | sort --version-sort | tail -n1)
echo "Detected osv-scanner latest version as: $osv_scanner_version"
osv_scanner_platform=$(echo "$TARGETPLATFORM" | cut -d/ -f2)
echo "Detected osv-scanner platform for $TARGETPLATFORM as: $osv_scanner_platform"

wget \
  "https://github.com/google/osv-scanner/releases/download/v$osv_scanner_version/osv-scanner_${osv_scanner_version}_linux_$osv_scanner_platform" \
  -O /tmp/osv-scanner
chmod a+x /tmp/osv-scanner
sudo mv /tmp/osv-scanner /usr/local/bin/osv-scanner
