#!/bin/bash
set -e

# eval $(ssh-agent -s)
# echo "$SSH_PRIVATE_KEY" | tr -d '/r' | ssh-add - > /dev/null
# cat memorial-backend.pem
#Get servers list
string=$STAGING_DEPLOY_SERVER
#Iterate servers for deploy and pull last commit
# ssh -i memorial-backend.pem ec2-user@$STAGING_DEPLOY_SERVER "deploy/deployAndRestart.sh" 
sshpass ssh -i memorial-backend.pem -o StrictHostKeyChecking=no ec2-user@$STAGING_DEPLOY_SERVER deploy/deployAndRestart.sh
exit