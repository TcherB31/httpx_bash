#!/bin/bash

response_codes=($(httpx -silent -status-code -threads 10 -timeout 10 -o output.txt domain_list.txt))
declare -A domain_codes
for ((i=0; i<${#response_codes[@]}; i++)); do
  domain_codes[${domain_list[i]}]=${response_codes[i]}
done
for domain in $(echo ${!domain_codes[@]} | tr " " "\n" | sort -n); do
  echo "$domain: ${domain_codes[$domain]}"
done
