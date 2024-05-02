#!/bin/bash

RANDOM_ID="$(openssl rand -hex 3)"
SERVER_NAME="mysql-server$RANDOM_ID"
RESOURCE_GROUP="myResourceGroup"
ADMIN_USER="myadmin"

# Prompt the user for the registry password (something like mypassword)
echo "Please enter your database user password:"
read -s ADMIN_PASSWORD

az mysql flexible-server create --resource-group $RESOURCE_GROUP --public-access 0.0.0.0 --admin-user $ADMIN_USER --admin-password $ADMIN_PASSWORD --sku-name Standard_B1ms --version 5.7 --location eastus --name $SERVER_NAME
