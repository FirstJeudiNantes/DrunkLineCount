#!/bin/bash

[ $# -ne 1 ] && {
  echo "Usage: $0 <file>" 
  exit 1
}

echo -n $(sed 's/.*/1+/g' $1) | cat - <(echo 0) | bc
