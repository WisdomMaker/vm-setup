#!/bin/bash
set -vxue

readonly BASE_DIR=$(dirname $(readlink -f $0))

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
sudo apt-get install -y \
  zlib1g-dev \
  libffi-dev \
  libssl-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev

source ${BASE_DIR}/../files/bash_aliases
latest_version=$(pyenv install --list | grep -E "^\s+[0-9\.]+$" | tail -1)
pyenv install -f ${latest_version}
pyenv global ${latest_version}
pip install pylint

