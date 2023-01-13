#!/bin/bash

echo "Please enter the list of target domains (separated by spaces):"
read -a domains
for domain in "${domains[@]}"
do 
    httpx -title -status -body -all $domain
done
echo "Fuzzing is complete!"
