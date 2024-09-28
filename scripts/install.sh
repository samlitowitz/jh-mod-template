#!/usr/bin/env bash

source $(dirname $0)/shared_config.sh

read -p "Install ${MOD_NAME} to ${MOD_DIR}? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rm -rf "${MOD_DIR}"
  mkdir -p "${MOD_DIR}"
  cp -R data "${MOD_DIR}"
  cp gfx.lua "${MOD_DIR}"
  cp main.lua "${MOD_DIR}"
  cp meta.lua "${MOD_DIR}"
  cp LICENSE "${MOD_DIR}"
  cp README.markdown "${MOD_DIR}"
fi
