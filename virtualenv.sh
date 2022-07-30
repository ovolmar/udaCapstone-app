#!/bin/bash

#echo "********  To invoke this script use:  source $0 *********"
VENV="$HOME/.capstone"
echo ${VENV}
#test -d ${VENV} || mkdir -v ${VENV}
python3 -m venv ${VENV}
source ${VENV}/bin/activate