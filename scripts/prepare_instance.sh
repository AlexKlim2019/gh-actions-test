#!/bin/sh
echo ">>>Dokku is being installed…" && 
wget https://raw.githubusercontent.com/dokku/dokku/v0.28.3/bootstrap.sh &&
sudo DOKKU_TAG=v0.28.3 bash bootstrap.sh &&
echo ">>> New app is being added..." && sudo dokku apps:create gha-test &&

echo ">>> Current swap file:" && free -h &&
echo ">>> Available space:" && df -h &&
echo ">>> Swap file is creating..." && sudo fallocate -l 4G /swapfile &&
ls -lh /swapfile && sudo chmod 600 /swapfile && ls -lh /swapfile &&
sudo mkswap /swapfile && sudo swapon /swapfile && sudo swapon --show &&
echo ">>> The swap file has been increased:" && free -h &&
sudo cp /etc/fstab /etc/fstab.bak &&
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
