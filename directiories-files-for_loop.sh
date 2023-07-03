#!/bin/bash

mkdir countries
cd countries
mkdir USA India UK Germany France
echo "Washington, D.C" > USA/capital.txt
echo "London" > UK/capital.txt
echo "New Delhi" > India/capital.txt
echo "Berlin" > Germany/capital.txt
echo "Paris" > France/capital.txt
echo "Current Date and Time: $(date)"
uptime

echo "----- Country and Capital List -----"

# Iterate through the countries
for country_dir in */; do
  country=${country_dir%/}  # Remove trailing slash from directory name

  # Read and display the capital
  capital=$(cat "${country_dir}capital.txt")
  echo "Country: $country, Capital: $capital"
done
