#!/bin/bash

# set python version, venv directory and requirements file
PYTHON_VERSION=3.9
VENV_NAME=venv
REQUIREMENTS=requirements.txt

# check if requirements file exists
if [ ! -f "$REQUIREMENTS" ]; then
    echo "Requirements file not found!"
    exit 1
fi

# check if venv directory already exists
if [ -d "$VENV_NAME" ]; then
    echo "The directory $VENV_NAME already exists. Please remove it before running this script."
    exit 1
fi

# create a new venv
python3.9 -m venv $VENV_NAME

# activate the venv
source $VENV_NAME/bin/activate

# Update pip to the latest version
python -m pip install --upgrade pip

# install the requirements
pip install -r $REQUIREMENTS

echo "Set up completed."