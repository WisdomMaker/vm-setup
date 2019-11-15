#!/bin/bash
set -vxue

readonly BASE_DIR=$(dirname $(readlink -f $0))

${BASE_DIR}/snippets/set-prompt.sh
${BASE_DIR}/snippets/install-mozc.sh
${BASE_DIR}/snippets/install-vim.sh
${BASE_DIR}/snippets/install-pyenv.sh
${BASE_DIR}/snippets/install-nodebrew.sh
${BASE_DIR}/snippets/install-jq.sh
${BASE_DIR}/snippets/install-awscli.sh
${BASE_DIR}/snippets/install-docker.sh

cp ${BASE_DIR}/files/bash_aliases ~/.bash_aliases

