#!/bin/sh

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin xxxxxxxxxxxxxx.dkr.ecr.us-east-2.amazonaws.com/{{cookiecutter.adapter_code}}
