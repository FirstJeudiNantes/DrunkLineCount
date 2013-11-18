#!/bin/bash

[ $# -ne 1 ] && {
  echo "Usage: $0 <file>" 
  exit 1
}

file=$(mktemp tmp.XXXXXX)
echo 'ggv$hh"qd@q' > $file
echo 'jddk@q0' | cat - test | vi -s $file -

rm $file
