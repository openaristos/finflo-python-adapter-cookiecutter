#!/bin/sh

aws lambda create-function \
    --function-name ons \
    --package-type Image \
    --timeout 900 \
    --memory-size 4096 \
    --role arn:aws:iam::591869475757:role/openaristos-lambda-role \
    --code ImageUri=591869475757.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}:latest