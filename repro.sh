#!/usr/bin/env bash

set -xeuo pipefail

rm -rf .mypy_cache
mypy foo.py bar.py
echo "x = 42" >> bar.py
mypy foo.py bar.py
