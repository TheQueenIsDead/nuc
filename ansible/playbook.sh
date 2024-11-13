#!/usr/bin/env bash
# Guard against being called from scripts in different locations by always referencing the file
# relative to the path of this script.
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
#ansible-playbook -K -i "${SCRIPT_DIR}/inventory" -l all "${SCRIPT_DIR}/playbook.yml" --extra-vars "@${SCRIPT_DIR}/../config.json" "${@}"
ansible-playbook -i "${SCRIPT_DIR}/inventory" -l all "${SCRIPT_DIR}/playbook.yml" --extra-vars "@${SCRIPT_DIR}/../config.json" "${@}"
