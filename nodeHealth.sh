#!/bin/bash
#
#
#Created by: Bikram
#Date: 22/07/2025
#
#Versoin: V1

set -x
set -e
set -o pipefail
free -g
nproc
ps -ef | grep amazon | awk -F" " '{print $2}'

