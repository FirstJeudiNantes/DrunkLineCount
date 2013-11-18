#!/bin/bash

for((i=0;i<256;i++)) ; do ruby bf.rb <(cat <(ruby -e "print '+' * $i") print_byte_in_hexa.bf) | rev ; done
