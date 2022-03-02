#!/bin/bash
set -eu

~/bin/mitamae local --node-yaml=nodes/local.yaml "$@" entrypoint.rb
