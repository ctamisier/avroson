#!/bin/bash

input=$1
outputDirectory=${2:-.}
mkdir -p "$outputDirectory"
outputFile="${outputDirectory:-.}/${1%.*}".json

echo "{\"schema\": \"" > "$outputFile"
sed  's/"/\\"/g' "$input" >> "$outputFile"
echo "\"}" >> "$outputFile"