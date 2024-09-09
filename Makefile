PACKAGE_NAME = nlp_project
VERSION = 0.0.1

.PHONY: setup clean build upload
setup:
    pip install wheel setuptools twine
clean:
    rm -rf dist build *.egg-info
build:
    python setup.py sdist bdist_wheel
upload:
    twine upload dist/*
