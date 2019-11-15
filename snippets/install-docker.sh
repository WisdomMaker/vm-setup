#!/bin/bash
set -vxue

#readonly BASE_URL="https://download.docker.com/linux/debian/dists/$(lsb_release -cs)/pool/stable/amd64/"
#wget https://download.docker.com/linux/debian/dists/$(lsb_release -cs)/pool/stable/amd64/

#sudo apt-get update
#sudo apt-get install -y \
#  apt-transport-https \
#  ca-certificates \
#  curl \
#  gnupg2 \
#  software-properties-common
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#sudo add-apt-repository \
#  "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# root ユーザー以外で docker を実行できる危険性については理解して利用すること
#sudo groupadd docker
#sudo usermod -a -G docker $(whoami)
#sudo service docker start

readonly TMP_FILE=$(mktemp)
trap "rm -f ${TMP_FILE}" EXIT

curl -fsSL https://get.docker.com -o ${TMP_FILE}
sudo sh ${TMP_FILE}
sudo groupadd docker
sudo usermod -aG docker $(whoami)

