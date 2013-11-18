#!/bin/bash

[ $# -ne 1 ] && {
  echo "Usage: $0 <file>" 
  exit 1
}

echo $(cat $1) | sed -E 's/[^][,.<>#+-]//g' 
