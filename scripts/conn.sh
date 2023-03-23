#!/bin/bash
NEXUS_REPO_USER="$(grep "NEXUS_REPO_USER" .env | sed -r 's/.{,16}//')"
NEW_USER_PASS="$(grep "NEW_USER_PASS" .env | sed -r 's/.{,14}//')"
HOST_ADDRESS="$(grep "HOST_ADDRESS" .env | sed -r 's/.{,13}//')"
REGISTRY_PORT="$(grep "REGISTRY_PORT" .env | sed -r 's/.{,14}//')"
REPOSITORY_NAME="$(grep "REPOSITORY_NAME" .env | sed -r 's/.{,16}//')"
ADDRESS="docker login -u ${NEXUS_REPO_USER} -p ${NEW_USER_PASS} http://${HOST_ADDRESS}:${REGISTRY_PORT}/repository/${REPOSITORY_NAME}/"
$ADDRESS
