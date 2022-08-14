#!/bin/bash
source ./shell-vars.conf # Variables for all shell scripts
echo "********  To invoke this script use:  source $0 *********"
echo ${VENV}
test -d ${VENV} || mkdir -v ${VENV}
python3 -m venv ${VENV}
source ${VENV}/bin/activate