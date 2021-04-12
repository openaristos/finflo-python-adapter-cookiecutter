#!/bin/sh

AWS_REGION=${1:-{{cookiecutter.aws_region}}}
AWS_ACCOUNT_ID=${2:-{{cookiecutter.aws_account_id}}}
IMAGE_TAG=$(git rev-parse HEAD)

aws lambda create-function \
    --function-name ons \
    --package-type Image \
    --timeout 900 \
    --memory-size 4096 \
    --role arn:aws:iam::$AWS_ACCOUNT_ID:role/openaristos-lambda-role \
    --code ImageUri=$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/{{cookiecutter.adapter_code}}:${IMAGE_TAG}lambda