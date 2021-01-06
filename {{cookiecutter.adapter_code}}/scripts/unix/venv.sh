#!/usr/bin/env bash
deactivate
rm -rf env
rm -rf *.egg-info
rm -rf dist
find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf
pip install virtualenv
virtualenv env --python=python3.8
source env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt