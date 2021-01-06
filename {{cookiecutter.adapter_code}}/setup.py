import io
import os
import re

from setuptools import find_packages
from setuptools import setup


def read(filename):
    filename = os.path.join(os.path.dirname(__file__), filename)
    text_type = type(u"")
    with io.open(filename, mode="r", encoding="utf-8") as fd:
        return re.sub(
            text_type(r":[a-z]+:`~?(.*?)`"), text_type(r"``\1``"), fd.read()
        )


with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="{{cookiecutter.adapter_code}}",
    version="0.0.1",
    author="{{cookiecutter.adapter_author}}",
    description="{{cookiecutter.adapter_description}}",
    long_description=read("README.md"),
    long_description_content_type="text/markdown",
    packages=find_packages(exclude=("tests",)),
    install_requires=requirements,
)
