#!/bin/bash
set -vxue

readonly TMP_FILE=$(mktemp)
trap "rm -f ${TMP_FILE}" EXIT

curl -fsSL https://get.docker.com -o ${TMP_FILE}
sudo sh ${TMP_FILE}
sudo groupadd docker
sudo usermod -aG docker $(whoami)

