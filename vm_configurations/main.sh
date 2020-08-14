#!/bin/bash -e

# $1 yum requirement file
# $2 pip requirement file

YUM_REQUIREMENT=$1
PIP_REQUIREMENT=$2

sudo yum -y install $(cat $YUM_REQUIREMENT)
pip3 install --user -r $PIP_REQUIREMENT
