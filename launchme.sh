#!/bin/bash

echo "Initializing config"
INSTALL_DIR="/home/$(whoami)/code"
CLONE_DIR="art_academy"
VENV_DIR="venv/bin"
PYTHON_CMD="python3"
LAUNCH_SCRIPT="artmaker.py"
GIT="git"
REQUIREMENTS="requirements.txt"
export ARGS="--listen --port 6464 --administrator --enable-console-prompts --api --enable-insecure-extension-access --medvram --api"




# Disable sentry logging
export ERROR_REPORTING=FALSE

# Do not reinstall existing pip packages on Debian/Ubuntu
export PIP_IGNORE_INSTALLED=0

# Pretty print
DELIMITER="################################################################"

# Do not run as root
if [[ $(id -u) -eq 0 ]]
then
    printf "\n" "${DELIMITER}"
    printf "\n" "ERROR: This script must not be launched as root, aborting..."
    printf "\n" "${DELIMITER}"
    exit 1
else
    printf "\n" "${DELIMITER}"
    printf "\e[1m\e[32m%s\e[0m is very attractive!" "$(whoami)"
    printf "\n" "${DELIMITER}"
fi

echo "Making sure we're in the right directory"
cd "${INSTALL_DIR}"/"${CLONE_DIR}"/

echo "activating venv"
${PYTHON_CMD} -m venv venv



source "${VENV_DIR}/activate"

#pip install --upgrade -r ${REQUIREMENTS}

printf "\n" "${DELIMITER}"
printf "FleeboWeebling..."
printf "Launching ${LAUNCH_SCRIPT}"
printf "\n" "${DELIMITER}"
"${PYTHON_CMD}" "${LAUNCH_SCRIPT}" "$@"
