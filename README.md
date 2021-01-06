# finflo-python-adapter-delimited-cookiecutter

This is a cookiecutter package for building scalable data adapters in Finance.

## Quickstart
First create a python virtual environment:
```
python3 -m venv env
source env/bin/activate
pip install --upgrade pip
```

Then install cookiecutter:
```
pip install cookiecutter
```

Next scaffold your adapter:
```
cookiecutter git@github.com:openaristos/finflo-python-adapter-cookiecutter.git
```

## Structure
The structure of this package:
```
.
├── README.md
├── cookiecutter.json
└── {{cookiecutter.adapter_name}}
    ├── LICENSE
    ├── MANIFEST.in
    ├── README.md
    ├── VERSION
    ├── metadata
    │   ├── adapter-docker.json
    │   ├── adapter.json
    │   └── perspective.json
    ├── pyproject.toml
    ├── requirements.txt
    ├── scripts
    │   ├── black.sh
    │   ├── release.sh
    │   ├── tree.sh
    │   └── venv.sh
    ├── setup.py
    ├── tox.ini
    └── {{cookiecutter.adapter_code}}
        └── app.py
```

# FinFlo
A modern tool to help ingest and shape financial data into machine readable formats.

Copyright &copy; 2020, Aristos Data, LLC. 
