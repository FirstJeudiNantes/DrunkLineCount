#!/bin/bash

[ $# -ne 1 ] && {
  echo "Usage: $0 <file>" 
  exit 1
}

grep -oc "$" $1
