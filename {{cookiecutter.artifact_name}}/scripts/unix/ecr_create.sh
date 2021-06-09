#!/bin/sh

aws ecr create-repository \
    --repository-name {{cookiecutter.adapter_code}}