#!/bin/bash

# Login to ACR
az login --identity
sudo az acr login --name ggstream

# Pull and install Edge
sudo docker-compose -f ../docker-compose.edge.yml pull
sudo docker-compose -f ../docker-compose.edge.yml down
sudo docker-compose -f ../docker-compose.edge.yml up -d