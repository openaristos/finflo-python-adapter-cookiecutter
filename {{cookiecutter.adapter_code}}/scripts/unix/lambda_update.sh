#!/bin/bash

echo "Image tag (include sha256): $1"

AWS_REGION=${2:-{{cookiecutter.aws_region}}}
AWS_ACCOUNT_ID=${3:-{{cookiecutter.aws_account_id}}}

aws lambda update-function-code \
    --function-name {{cookiecutter.adapter_code}} \
    --image-uri $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/{{cookiecutter.adapter_code}}@$1
