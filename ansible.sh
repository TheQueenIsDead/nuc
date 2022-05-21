#!/usr/bin/env bash
./ansible/roles.sh

if [ ! -z ${@} ]; then
  echo "Executing playbook.sh with extra args: ${@}"
fi

./ansible/playbook.sh "${@}"
