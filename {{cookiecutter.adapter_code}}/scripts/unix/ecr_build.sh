#!/bin/sh

docker build . -f Dockerfile.aws -t {{cookiecutter.adapter_code}}:latest
docker tag {{cookiecutter.adapter_code}}:latest 591869475757.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}
docker push 591869475757.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}
