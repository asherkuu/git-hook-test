#!/bin/bash

echo ':::::::: Run test ::::::::'
echo ':::::::: Run test ::::::::'

if git diff HEAD^ HEAD --exit-code -- ./package.json; then
    npm ci
fi