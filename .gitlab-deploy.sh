#!/bin/bash

#Get servers list
set -f
if [ "$1" == "staging"]
then
string=$STAGING_DEPLOY_SERVER
fi
array=[${string}]
#Iterate servers for deploy and pull last commit
for i in "${!array[@]}" do    
      echo "Deploy project on server ${array[i]}"    
      ssh ec2-user@${array[i]} "cd /var/www && git pull origin master"
done