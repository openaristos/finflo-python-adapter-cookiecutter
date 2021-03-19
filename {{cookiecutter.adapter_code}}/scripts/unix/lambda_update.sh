#!/bin/bash

echo "Image tag (include sha256): $1"

aws lambda update-function-code \
    --function-name {{cookiecutter.adapter_code}} \
    --image-uri {{cookiecutter.aws_account_id}}.dkr.ecr.{{cookiecutter.aws_region}}.amazonaws.com/{{cookiecutter.adapter_code}}@$1
