#!/bin/sh

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 591869475757.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}
