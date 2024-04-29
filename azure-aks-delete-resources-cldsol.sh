#!/bin/bash

kubectl delete -f kubernetes/manifests/customer-core.yaml
kubectl delete -f kubernetes/manifests/customer-management-backend.yaml
kubectl delete -f kubernetes/manifests/customer-management-frontend.yaml
kubectl delete -f kubernetes/manifests/customer-self-service-backend.yaml
kubectl delete -f kubernetes/manifests/customer-self-service-frontend.yaml
kubectl delete -f kubernetes/manifests/policy-management-backend.yaml
kubectl delete -f kubernetes/manifests/policy-management-frontend.yaml
kubectl delete -f kubernetes/manifests/risk-management-server.yaml
kubectl delete -f kubernetes/manifests/spring-boot-admin.yaml