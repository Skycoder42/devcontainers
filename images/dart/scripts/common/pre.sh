#!/bin/bash
# $@: Additional apt packages
set -eo pipefail

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install lcov nano "$@"

/tmp/scripts/common/yq.install.sh

/tmp/scripts/common/osv-scanner.install.sh
