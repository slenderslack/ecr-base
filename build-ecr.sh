#!/bin/bash

aws ecr get-login-password --region us-east-1 --profile sts | docker login --username AWS --password-stdin "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com"

docker build \
  --build-arg REVISION=$(git rev-parse HEAD) \
  --build-arg SOURCE=base/Dockerfile \
  -t "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/base:latest" \
  -f base/Dockerfile .

docker push "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/base:latest"

echo "wait for 20 seconds"

sleep 20

docker build \
  --build-arg REVISION=$(git rev-parse HEAD) \
  --build-arg SOURCE=service/Dockerfile \
  -t "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/service:latest" \
  -f service/Dockerfile .

docker push "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/service:latest"

