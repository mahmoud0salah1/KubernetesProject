#!/bin/bash

# Start Minikube
echo "Starting Minikube..."
minikube stop
minikube delete
minikube start

# Check Kubernetes pods in the 'webapp' namespace
kubectl create namespace webapp
kubectl apply -f backend-deployment.yaml
kubectl apply -f database-deployment.yaml
kubectl apply -f proxy-deployment.yaml
kubectl apply -f nginx-config.yaml



echo "Checking Kubernetes pods in namespace 'webapp'..."
kubectl get pods -n webapp
kubectl get pods
kubectl get pods -n cicd
kubectl get pods
# Check Kubernetes services in the 'webapp' namespace
echo "Checking Kubernetes services in namespace 'webapp'..."
kubectl get services -n webapp
kubectl get services -n cicd
kubectl get pods -n webapp
kubectl get pods -n webapp
kubectl get pods -n webapp
kubectl get pods -n webapp
# End of script
echo "Deployment steps completed."
