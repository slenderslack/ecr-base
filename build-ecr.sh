#!/bin/bash

echo build base:latest

docker build \
  --build-arg REVISION=$(git rev-parse HEAD) \
  --build-arg SOURCE=Dockerfile.base \
  -t "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/base:latest" \
  -f base/Dockerfile .

echo build service:latest
docker build \
  --build-arg REVISION=$(git rev-parse HEAD) \
  --build-arg SOURCE=Dockerfile.service \
  -t "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/service:latest" \
  -f service/Dockerfile .

aws ecr get-login-password --region us-east-1 --profile sts | docker login --username AWS --password-stdin 111664719423.dkr.ecr.us-east-1.amazonaws.com

echo push base:latest
docker push "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/base:latest"

echo push service:latest
docker push "$ECR_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/service:latest"

