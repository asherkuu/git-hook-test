#!/bin/bash

cd /var/www/git-hook-test
git pull origin main

#cd /var/www/git-hook-test
# git pull origin develop
# rm -rf ./node_modules
# npm ci
# pm2 reload ecosystem.config.js
# echo started dev_pull.sh
