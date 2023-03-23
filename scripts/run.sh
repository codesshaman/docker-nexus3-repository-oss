#!/bin/bash
REGISTRY_URL="$(grep "REGISTRY_URL" .env | sed -r 's/.{,13}//')"

if [ ! -d nexus-data ]; then
    mkdir nexus-data
    chmod 777 nexus-data
fi

if [ ! -d nexus-data/certs ]; then
    mkdir nexus-data/certs
    chmod 777 nexus-data/certs
    echo $REGISTRY_URL
    openssl req \
    -newkey rsa:4096 -nodes -sha256 -keyout nexus-data/certs/domain.key \
    -addext "subjectAltName = DNS:${REGISTRY_URL}" \
    -x509 -days 365 -out nexus-data/certs/domain.crt
fi


docker-compose up -d