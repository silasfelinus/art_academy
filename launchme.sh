#!/bin/bash

# check for config.ini
# please change settings there
if [[ -f config.ini ]]
then
    source <(grep = config.ini | sed 's/ *= */=/g')
fi

# Set defaults
# Install directory without trailing slash
if [[ -z "${install_dir}" ]]
then
    install_dir="/home/$(whoami)/code"
fi

# Name of the subdirectory
if [[ -z "${clone_dir}" ]]
then
    clone_dir="art_academy"
fi

# python3 executable
if [[ -z "${python_cmd}" ]]
then
    python_cmd="python3"
fi

# git executable
if [[ -z "${GIT}" ]]
then
    export GIT="git"
fi

# python3 venv without trailing slash (${install_dir}/${clone_dir}/venv/)
if [[ -z "${venv_dir}" ]]
then
    venv_dir="${install_dir}/${clone_dir}/venv/bin"
fi

if [[ -z "${LAUNCH_SCRIPT}" ]]
then
    LAUNCH_SCRIPT="test.py"
fi

# Disable sentry logging
export ERROR_REPORTING=FALSE

# Do not reinstall existing pip packages on Debian/Ubuntu
export PIP_IGNORE_INSTALLED=0

# Pretty print
delimiter="################################################################"

# Do not run as root
if [[ $(id -u) -eq 0 ]]
then
    printf "\n%s\n" "${delimiter}"
    printf "\e[1m\e[31mERROR: This script must not be launched as root, aborting...\e[0m"
    printf "\n%s\n" "${delimiter}"
    exit 1
else
    printf "\n%s\n" "${delimiter}"
    printf "\e[1m\e[32m%s\e[0m is very attractive!" "$(whoami)"
    printf "\n%s\n" "${delimiter}"
fi


cd "${install_dir}"/"${clone_dir}"/ || { printf "\e[1m\e[31mERROR: Can't cd to %s/%s/, aborting...\e[0m" "${install_dir}" "${clone_dir}"; exit 1; }
if [[ ! -d "${venv_dir}" ]]
then
    "${python_cmd}" -m venv "${venv_dir}"
    first_launch=1
fi
# shellcheck source=/dev/null
if [[ -f "${venv_dir}"/activate ]]
then
    source "${venv_dir}"/activate
else
    printf "\n%s\n" "${delimiter}"
    printf "\e[1m\e[31mERROR: Cannot activate python venv, aborting...\e[0m"
    printf "\n%s\n" "${delimiter}"
    exit 1
fi

pip install --upgrade -r requirements.txt

    printf "\n%s\n" "${delimiter}"
    printf "FleeboWeebling..."
    printf "\n%s\n" "${delimiter}"
    "${python_cmd}" "${LAUNCH_SCRIPT}" "$@"
