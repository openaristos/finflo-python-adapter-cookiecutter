#!/bin/bash

echo "Image sha256: $1"

aws lambda update-function-code \
    --function-name {{cookiecutter.adapter_code}} \
    --image-uri xxxxxxxxxxxxxx.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}@sha256:$1
