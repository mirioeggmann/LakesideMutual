#!/bin/bash

RESOURCE_GROUP="myResourceGroup"
RANDOM_ID="$(openssl rand -hex 3)"
MY_AKS_CLUSTER_NAME="myAKSCluster$RANDOM_ID"
MY_DNS_LABEL="mydnslabel$RANDOM_ID"

az aks create \
  --resource-group $RESOURCE_GROUP \
  --name $MY_AKS_CLUSTER_NAME \
  --enable-managed-identity \
  --enable-app-routing \
  --node-count 1 \
  --generate-ssh-keys
