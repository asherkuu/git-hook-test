#!/bin/bash

echo ':::::::: Run test ::::::::'
echo ':::::::: Run test ::::::::'

if git diff HEAD^ HEAD --exit-code -- ./package.json; then
    # ... code to handle a zero exit code here
    echo "zero exit code"
else
    # ... code to handle a nonzero exit here
    echo "nonzero exit code"
fi
