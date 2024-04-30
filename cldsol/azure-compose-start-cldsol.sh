#!/bin/bash

# Prompt the user for the registry password
echo "Please enter your registry password:"
read -s REGISTRY_PASSWORD

# Set other parameters
ENVIRONMENT="myContainerAppEnv"
RESOURCE_GROUP="myResourceGroup"
COMPOSE_FILE_PATH="./docker-compose.yml"
LOCATION="eastus"
REGISTRY_USERNAME="ca38c814185cacr"
REGISTRY_SERVER="ca38c814185cacr.azurecr.io"

# Create the container app using the provided details
az containerapp compose create \
  --environment $ENVIRONMENT \
  --resource-group $RESOURCE_GROUP \
  --compose-file-path $COMPOSE_FILE_PATH \
  --location $LOCATION \
  --registry-password $REGISTRY_PASSWORD \
  --registry-username $REGISTRY_USERNAME \
  --registry-server $REGISTRY_SERVER