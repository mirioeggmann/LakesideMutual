#!/bin/bash

# Set the resource group name
RESOURCE_GROUP="myResourceGroup"

# Get all container apps in the specified resource group
container_apps=$(az containerapp list --resource-group $RESOURCE_GROUP --query "[].name" --output tsv)

# Loop through the list of container apps and delete each one
for app in $container_apps; do
    echo "Deleting container app: $app"
    az containerapp delete --name $app --resource-group $RESOURCE_GROUP --yes
    echo "Deleted container app: $app"
done

echo "All container apps have been deleted from $RESOURCE_GROUP."
