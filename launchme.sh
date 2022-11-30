#!/bin/bash

source <(grep = config.ini | sed 's/ *= */=/g')


   
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


cd "${INSTALL_DIR}"/"${CLONE_DIR}"/ || { printf "\n" "ERROR: Can't cd to %s/%s/, aborting...\e[0m" "${INSTALL_DIR}" "${CLONE_DIR}"; exit 1; }
if [[ ! -d "${VENV_DIR}" ]]
then
    "${PYTHON_CMD}" -m venv "${VENV_DIR}"
    first_launch=1
fi
# shellcheck source=/dev/null
if [[ -f "${VENV_DIR}/activate" ]]
then
    source "${VENV_DIR}/activate"
else
    printf "\n" "${DELIMITER}"
    printf "\ERROR: Cannot activate python venv, aborting..."
    printf "\n" "${DELIMITER}"
    exit 1
fi

pip install --upgrade -r requirements.txt

    printf "\n" "${DELIMITER}"
    printf "FleeboWeebling..."
    printf "\n" "${DELIMITER}"
    "${PYTHON_CMD}" "${LAUNCH_SCRIPT}" "$@"
