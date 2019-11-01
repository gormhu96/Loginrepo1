#!/bin/bash

curl --insecure -X POST \
     -H "Content-type: application/json" \
     --data '{"user": "guillermo", "password": "123456"}' \
     https://localhost:10443/post/login
echo
