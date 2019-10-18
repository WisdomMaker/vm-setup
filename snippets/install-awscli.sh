#!/bin/bash
set -vxue

readonly BASE_DIR=$(dirname $(readlink -f $0))

source ${BASE_DIR}/../files/bash_aliases
pip3 install awscli --upgrade --user

