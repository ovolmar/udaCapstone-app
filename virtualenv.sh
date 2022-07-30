#!/bin/bash
set -e 
echo "********  To invoke this script use:  source $0 *********"
VENV=".capstone"
test -d ${VENV} || mkdir -v ${VENV}
python3 -m venv ${VENV}
source .capstone/bin/activate