#!/bin/bash

if [ -z "$1" ]; then
  echo "Enter a directory"
  exit 1
fi


cd "$1" || exit


for file in *.txt; do
  if [ -f "$file" ]; then
   mv "$file" "old_$file"
  fi
done
