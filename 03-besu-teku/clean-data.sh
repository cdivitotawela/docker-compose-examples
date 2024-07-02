#!/bin/sh

for d in besu-data teku-data
do
  echo "Cleaning data directory $d. Enter any key to proceed"
  read
  tmp_file=$(mktemp)
  cp $d/.gitignore $tmp_file
  rm -rf $d/*
  mv $tmp_file $d/.gitignore
done