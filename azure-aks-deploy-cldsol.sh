#!/bin/bash

kubectl apply -f kubernetes/manifests/customer-core.yaml
kubectl apply -f kubernetes/manifests/customer-management-backend.yaml
kubectl apply -f kubernetes/manifests/customer-management-frontend.yaml
kubectl apply -f kubernetes/manifests/customer-self-service-backend.yaml
kubectl apply -f kubernetes/manifests/customer-self-service-frontend.yaml
kubectl apply -f kubernetes/manifests/policy-management-backend.yaml
kubectl apply -f kubernetes/manifests/policy-management-frontend.yaml
kubectl apply -f kubernetes/manifests/risk-management-server.yaml
kubectl apply -f kubernetes/manifests/spring-boot-admin.yaml