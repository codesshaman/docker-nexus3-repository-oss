#!/bin/bash
HOST_ADDRESS="$(grep "HOST_ADDRESS" .env | sed -r 's/.{,13}//')"
REGISTRY_PORT="$(grep "REGISTRY_PORT" .env | sed -r 's/.{,14}//')"
ADDRESS="${HOST_ADDRESS}:${REGISTRY_PORT}"
echo "Use following command for image pulling:"
echo " "
echo "docker pull ${ADDRESS}/<your_image_name>"
