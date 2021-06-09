#!/usr/bin/env bash
deactivate
rm -rf env
pip install virtualenv
virtualenv env --python=python3.8
source env/bin/activate
pip install --upgrade pip
pip install jupyter