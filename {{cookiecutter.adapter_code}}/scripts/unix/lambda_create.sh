#!/bin/sh

aws lambda create-function \
    --function-name ons \
    --package-type Image \
    --timeout 900 \
    --memory-size 4096 \
    --role arn:aws:iam::{{cookiecutter.aws_account_id}}:role/openaristos-lambda-role \
    --code ImageUri={{cookiecutter.aws_account_id}}.dkr.ecr.{{cookiecutter.aws_region}}.amazonaws.com/{{cookiecutter.adapter_code}}:latest