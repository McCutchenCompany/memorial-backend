#!/bin/bash

touch ~/.ssh/config
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
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
  echo "Deploy project on server $STAGING_DEPLOY_SERVER"    
  ssh ec2-user@$STAGING_DEPLOY_SERVER "cd memorial-backend && git pull origin staging"