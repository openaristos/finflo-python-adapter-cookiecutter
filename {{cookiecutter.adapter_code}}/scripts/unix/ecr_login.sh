#!/bin/sh

aws ecr get-login-password --region {{cookiecutter.aws_region}} | docker login --username AWS --password-stdin {{cookiecutter.aws_account_id}}.dkr.ecr.{{cookiecutter.aws_region}}.amazonaws.com/{{cookiecutter.adapter_code}}
