#!/bin/bash

GIT_PATH="$(grep "NEW_USER_PASS" .env | sed -r 's/.{,14}//')"

if [ -f "nexus-data/admin.password" ]; then
    echo "Your first admin password:"
    cat nexus-data/admin.password
fi

echo "Your changed admin password: "
echo $GIT_PATH