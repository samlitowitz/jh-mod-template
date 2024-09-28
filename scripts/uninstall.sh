#!/usr/bin/env bash

source $(dirname $0)/shared_config.sh

read -p "Remove ${MOD_NAME} from ${MOD_DIR}? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rm -rf "${MOD_DIR}"
fi
