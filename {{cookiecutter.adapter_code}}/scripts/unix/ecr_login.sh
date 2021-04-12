#!/bin/sh

AWS_REGION=${1:-{{cookiecutter.aws_region}}}
AWS_ACCOUNT_ID=${2:-{{cookiecutter.aws_account_id}}}

aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/{{cookiecutter.adapter_code}}
