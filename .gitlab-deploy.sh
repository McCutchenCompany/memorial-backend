#!/bin/bash
set -e
if [ "$1" == "staging" ]
then
  sshpass ssh -o StrictHostKeyChecking=no ec2-user@$STAGING_DEPLOY_SERVER "deploy/deployAndRestart.sh"

elif [ "$1" == "master" ]
then
  sshpass ssh -o StrictHostKeyChecking=no ec2-user@$PROD_DEPLOY_SERVER "deploy/deployAndRestart.sh"
fi