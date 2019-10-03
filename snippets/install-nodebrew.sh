#!/bin/bash
set -vxue

readonly BASE_DIR=$(dirname $(readlink -f $0))

#curl -L git.io/nodebrew | perl - setup

source ${BASE_DIR}/../files/bash_aliases
latest_version=$(nodebrew ls-remote | grep -E "^v[0-9]+" | tail -1 | awk '{print $NF}')
nodebrew install-binary ${latest_version}
nodebrew use ${latest_version}

