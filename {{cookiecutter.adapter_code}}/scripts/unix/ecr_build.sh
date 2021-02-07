#!/bin/sh

docker build . -f Dockerfile.aws -t {{cookiecutter.adapter_code}}:latest
docker tag {{cookiecutter.adapter_code}}:latest xxxxxxxxxxxxxx.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}
docker push xxxxxxxxxxxxxx.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}
