!/bin/sh
echo ">>> Enter ip:" && read ip &&
echo ">>> Public ssh key is being added on ip address $ip..." && 
cat C:/Users/klyme/.ssh/id_ed25519.pub | ssh -i "ank.pem" ubuntu@$ip "sudo sshcommand acl-add dokku admin" &&
echo ">>> New url for dokku branch is being set..." && git remote set-url dokku dokku@$ip:educational-platform &&
echo ">>> Environment variables are being set..." && 
ssh dokku@$ip config:set educational-platform JWT_SECRET=92VdH1Ltujx5xhTI CORS_ALLOWED_ORIGINS=http://localhost:5000 JDBC_DATABASE_PASSWORD=postgres JDBC_DATABASE_URL=jdbc:postgresql://educenter-database.camfgwwhvhle.us-east-1.rds.amazonaws.com:5432/educenter JDBC_DATABASE_USERNAME=postgres SPRING_PROFILES_ACTIVE=dev PORT=8080
