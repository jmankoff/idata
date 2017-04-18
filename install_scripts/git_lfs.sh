#! /bin/bash
#git lfs
sudo apt-get install python-software-properties
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install
cd ~/idata
git lfs track "*.zip"
git lfs track "*.gz"
git add .gitattributes
