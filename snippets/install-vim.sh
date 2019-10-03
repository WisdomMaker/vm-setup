#!/bin/bash
set -vxue

readonly BASE_DIR=$(dirname $(readlink -f $0))

sudo apt-get install -y vim
cp ${BASE_DIR}/../files/vimrc ~/.vimrc

