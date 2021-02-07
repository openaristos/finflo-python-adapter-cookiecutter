#!/bin/bash



aws lambda update-function-code \
    --function-name {{cookiecutter.adapter_code}} \
    --image-uri xxxxxxxxxxxxxx.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}@sha256:c0b0e7097316a15486e901c553232e1b4a5b16656541e09129b4412181a6ff8f