#!/bin/bash
echo "Logging into Amazon ECR..."
aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin 148761652675.dkr.ecr.ap-southeast-2.amazonaws.com
echo "Pulling the latest Docker image..."
docker pull 148761652675.dkr.ecr.ap-southeast-2.amazonaws.com/test-node-app:latest
#echo "Stopping the existing Docker container..."
#docker stop $(docker ps -a -q --filter ancestor=<account_id>.dkr.ecr.<region>.amazonaws.com/my-node-app:latest) || true
#docker rm $(docker ps -a -q --filter ancestor=<account_id>.dkr.ecr.<region>.amazonaws.com/my-node-app:latest) || true

echo "Running the latest Docker container..."
docker run -d -p 3000:3000 148761652675.dkr.ecr.ap-southeast-2.amazonaws.com/test-node-app:latest
