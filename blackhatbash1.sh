#!/bin/bash
set -x
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${EUID}
echo ${OSTYPE}
ps -ef
bash -r blackhatbash1.sh
bash -n blackhatbash1.sh
bash -x blackhatbash1.sh
