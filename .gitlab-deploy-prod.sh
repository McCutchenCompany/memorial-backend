#!/bin/bash
set -e

sshpass ssh -o StrictHostKeyChecking=no ec2-user@$PROD_DEPLOY_SERVER "deploy/deployAndRestart.sh"