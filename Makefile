## The Makefile includes instructions on environment setup and lint testing
# VARS
# CLUSTER_NAME=tbd
# SSH_KEYNAME=tbd
# REGION=tbd
# DOCKER_IMAGE=tbd
# CONTAINER_PORT=tbd
# EXPOSED_PORT=tbd

setup:
	# Create python virtualenv & source it
	# source virtualenv.sh
	python3 -m venv ~/.capstone

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	python -m pytest -vv --cov=myrepolib *.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
