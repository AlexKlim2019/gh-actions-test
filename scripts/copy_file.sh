#!/bin/sh

echo ">>> Enter ip: " && read ip &&
scp -i "ank.pem" D:/dev/anadea/projects/petprojects/educational-platform/scripts/prepare_instance.sh ubuntu@$ip:~/
