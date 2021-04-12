#!/bin/sh

AWS_REGION=${1:-{{cookiecutter.aws_region}}}
AWS_ACCOUNT_ID=${2:-{{cookiecutter.aws_account_id}}}
IMAGE_TAG=$(git rev-parse HEAD)

docker build . -f Dockerfile.lambda -t ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/{{cookiecutter.adapter_code}}:${IMAGE_TAG}lambda
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/{{cookiecutter.adapter_code}}:${IMAGE_TAG}lambda

docker build . -f Dockerfile.kubernetes -t ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/{{cookiecutter.adapter_code}}:${IMAGE_TAG}kubernetes
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/{{cookiecutter.adapter_code}}:${IMAGE_TAG}kubernetes
