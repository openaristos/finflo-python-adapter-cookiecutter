#!/bin/sh

docker build . -f Dockerfile.aws -t {{cookiecutter.adapter_code}}:latest
docker tag {{cookiecutter.adapter_code}}:latest {{cookiecutter.aws_account_id}}.dkr.ecr.{{cookiecutter.aws_region}}.amazonaws.com/{{cookiecutter.adapter_code}}
docker push {{cookiecutter.aws_account_id}}.dkr.ecr.{{cookiecutter.aws_region}}.amazonaws.com/{{cookiecutter.adapter_code}}
