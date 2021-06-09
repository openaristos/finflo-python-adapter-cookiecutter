#!/bin/bash

AWS_REGION=${2:-{{cookiecutter.aws_region}}}
AWS_ACCOUNT_ID=${3:-{{cookiecutter.aws_account_id}}}
IMAGE_TAG=$(git rev-parse HEAD)

aws lambda update-function-code \
    --function-name {{cookiecutter.adapter_code}} \
    --image-uri ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/{{cookiecutter.adapter_code}}:${IMAGE_TAG}-lambda