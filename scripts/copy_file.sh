#!/bin/sh

echo ">>> Enter ip: " && read ip &&
scp -i "gh_actions.pem" D:/dev/anadea/projects/gt-actions-test/scripts/prepare_instance.sh ubuntu@$ip:~/

