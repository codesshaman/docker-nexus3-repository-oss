#!/bin/bash

if [ ! -d nexus-data ]; then
    mkdir nexus-data
    chmod 777 nexus-data
fi
docker-compose up -d