#!/bin/bash

MY_AKS_CLUSTER_NAME="myAKSClusterdcc7bf"
RESOURCE_GROUP="myResourceGroup"

az aks get-credentials \
  --resource-group $RESOURCE_GROUP \
  --name $MY_AKS_CLUSTER_NAME
