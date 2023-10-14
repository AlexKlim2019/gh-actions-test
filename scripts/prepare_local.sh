!/bin/sh
echo ">>> Enter ip:" && read ip &&
echo ">>> Public ssh key is being added on ip address $ip..." && 
cat C:/Users/klyme/.ssh/id_ed25519.pub | ssh -i "gh_actions.pem" ubuntu@$ip "sudo sshcommand acl-add dokku admin" &&
echo ">>> New url for dokku branch is being set..." && git remote add dokku dokku@$ip:gha-test &&
ssh dokku@$ip config:set gha-test SPRING_PROFILES_ACTIVE=dev PORT=8080
