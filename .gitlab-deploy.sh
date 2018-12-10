#!/bin/bash
set -e

eval $(ssh-agent -s)
# echo "$SSH_PRIVATE_KEY" | tr -d '/r' | ssh-add - > /dev/null

#Get servers list
string=$STAGING_DEPLOY_SERVER
echo string
array=[${string}]
#Iterate servers for deploy and pull last commit
  echo "Deploy project on server $STAGING_DEPLOY_SERVER"    
  ssh -i $SSH_PRIVATE_KEY ec2-user@$STAGING_DEPLOY_SERVER 'bash' < "cd memorial-backend && git pull origin staging"