#!/bin/bash


eval $(ssh-agent -s)
echo "$SSH_PRIVATE_KEY" | tr -d '/r' | ssh-add - > /dev/null

#Get servers list
set -f
if [ "$1" == "staging"]
then
string=$STAGING_DEPLOY_SERVER
echo string
fi
array=[${string}]
#Iterate servers for deploy and pull last commit
  echo "Deploy project on server ${string}"    
  ssh ec2-user@${string} "cd memorial-backend && git pull origin staging"