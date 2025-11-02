#!/bin/bash

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx --force-update

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx --create-namespace \
  -f ingress-nginx-values.yaml

INGRESS_IP=$(kubectl -n ingress-nginx get svc ingress-nginx-controller -o jsonpath="{.status.loadBalancer.ingress[0].ip}")

echo "Ingress IP Address: $INGRESS_IP"
