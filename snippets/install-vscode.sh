#!/bin/bash
set -vxue

readonly TMP_FILE=$(mktemp)
trap "rm -f ${TMP_FILE}" EXIT

curl -fsSL https://go.microsoft.com/fwlink/?LinkID=760868 -o ${TMP_FILE}
sudo dpkg -i ${TMP_FILE}

