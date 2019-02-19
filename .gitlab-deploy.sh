#!/bin/bash
set -ec2

sshpass ssh -o StrictHostKeyChecking=no ec2-user@$STAGING_DEPLOY_SERVER "deploy/deployAndRestart.sh"
