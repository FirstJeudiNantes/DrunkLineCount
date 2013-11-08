#!/bin/bash

[ $# -ne 1 ] && {
  echo "Usage: $0 <file>" 
  exit 1
}

file=$(mktemp wc-l.XXXXXX)

sed 's/.//g' $1 > $file
ls -l $file | awk '{print $5}'

rm $file
