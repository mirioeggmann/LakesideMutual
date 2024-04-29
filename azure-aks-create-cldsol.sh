#!/bin/bash

# Set other parameters
ENVIRONMENT="myContainerAppEnv"
RESOURCE_GROUP="myResourceGroup"
LOCATION="eastus"
REGISTRY_USERNAME="ca38c814185cacr"
REGISTRY_SERVER="ca38c814185cacr.azurecr.io"

RANDOM_ID="$(openssl rand -hex 3)"
REGION="eastus"
MY_AKS_CLUSTER_NAME="myAKSCluster$RANDOM_ID"
MY_DNS_LABEL="mydnslabel$RANDOM_ID"

az aks create \
  --resource-group $RESOURCE_GROUP \
  --name $MY_AKS_CLUSTER_NAME \
  --enable-managed-identity \
  --enable-app-routing \
  --node-count 1 \
  --generate-ssh-keys
