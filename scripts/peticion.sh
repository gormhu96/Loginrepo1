#!/bin/bash

curl -X POST \
     -H "Content-type: application/json" \
     --data '{"user": "guillermo", "password": "123456"}' \
     localhost/post/login
