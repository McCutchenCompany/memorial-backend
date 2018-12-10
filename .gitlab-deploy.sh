#!/bin/bash
set -e

eval $(ssh-agent -s)
# echo "$SSH_PRIVATE_KEY" | tr -d '/r' | ssh-add - > /dev/null

#Get servers list
string=$STAGING_DEPLOY_SERVER
ls
#Iterate servers for deploy and pull last commit
ssh -i $SSH_PRIVATE_KEY ec2-user@$STAGING_DEPLOY_SERVER "deploy/deployAndRestart.sh" 