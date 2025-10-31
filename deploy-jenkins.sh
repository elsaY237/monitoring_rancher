#!/bin/bash

# Namespace
kubectl create namespace devops-tools --dry-run=client -o yaml | kubectl apply -f -

# Installation de Jenkins via Helm
helm upgrade --install jenkins ./monitoring/helm \
  --namespace devops-tools \
  -f ./monitoring/helm/dev/values.yaml

# Vérification du déploiement
kubectl get pods -n devops-tools
