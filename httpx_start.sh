#!/bin/bash

command -v httpx >/dev/null 2>&1 || { echo >&2 "httpx is required but it's not installed.  Aborting."; exit 1; }
echo "Please provide the target domain to scan: "
read target
echo "Scanning $target for open services..."
httpx -silent -threads 10 -v -no-color $target
