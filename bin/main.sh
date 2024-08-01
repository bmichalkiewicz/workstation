#!/bin/bash

set -e

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <BECOME_PASSWORD>"
    exit 1
fi

BECOME_PASSWORD="$1"
SCRIPT=$(realpath "$0")
ANSIBLE_ROOT=$(dirname "$(dirname "${SCRIPT}")")

PLAYBOOK_FILE="main.yml"

ANSIBLE_CONFIG="${ANSIBLE_ROOT}/ansible.cfg" ansible-playbook \
                                                --diff "${ANSIBLE_ROOT}/${PLAYBOOK_FILE}" \
                                                -i "${ANSIBLE_ROOT}/inventory/hosts.yml" \
                                                -e "ansible_become_password=${BECOME_PASSWORD}"
