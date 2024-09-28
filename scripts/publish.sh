#!/usr/bin/env bash

source $(dirname $0)/shared_config.sh

read -p "Publishing ${MOD_NAME} from ${MOD_DIR}? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cd "${JH_DIR}" && env LD_LIBRARY_PATH=. jh --publish cantis_unique_knives
fi
