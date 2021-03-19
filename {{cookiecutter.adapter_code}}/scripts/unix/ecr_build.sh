#!/bin/sh

AWS_REGION=${1:-{{cookiecutter.aws_region}}}
AWS_ACCOUNT_ID=${2:-{{cookiecutter.aws_account_id}}}

docker build . -f Dockerfile.aws -t {{cookiecutter.adapter_code}}:latest
docker tag {{cookiecutter.adapter_code}}:latest $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/{{cookiecutter.adapter_code}}
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/{{cookiecutter.adapter_code}}
