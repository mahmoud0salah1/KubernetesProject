# Kubernetes-Project
# Three-Tier Application with Docker and Kubernetes

## Overview

This project demonstrates the deployment of a three-tier application consisting of a backend, a database, and a proxy using Docker and Kubernetes. Each tier is deployed with two replicas for high availability, and the entire project is organized within a namespace called `webapp`.

## Project Structure

- **Backend**: exposed on port 8000.
- **Database**: MySQL database for data storage.
- **Proxy**: Nginx configured to route traffic to the backend service.

## Features

- Each tier is deployed with 2 replicas for redundancy ,Except for the database only has one replica .
- Database credentials are mounted into the pods from the host machine.
- Services are configured to group each tier, allowing communication between them.
- The proxy communicates with the backend service to handle client requests.

## Deployment Instructions

1-minikube start
2-go to the path of the file 
3- et the minikube ip with this command : minikube ip
4- use this command to get to the website: curl http://<minikube ip>:310000
