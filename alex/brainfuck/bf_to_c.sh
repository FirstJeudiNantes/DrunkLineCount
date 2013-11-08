#!/bin/bash

[ $# -ne 2 ] && {
  echo "Usage: $0 <file.bf> <file.c>"
  exit 1
}

file=$(mktemp tmp.XXXXXX)
c_file=$2
c_exec=$(basename $c_file .c)
cat > $file <<EOF
VG==:x! $c_file
EOF

echo -e $(cat <(echo -e "#include <strings.h>\\\n\\\nint main() {\\\nchar array[30000];\\\nbzero(array, 29999);\\\nchar *str=array;\\\n") <(cat $1 | sed -e 's/[^][,.<>#+-]//g' -f <(cat <<EOF
s/\./putchar(*str);/g
s/,/*str=getchar();/g
s/-/(*str)--;/g
s/\+/(*str)++;/g
s/</str--;/g
s/>/str++;/g
s/\]/}/g
s/\[/while(*str){/g
EOF
) -e 's/;/;\\n/g;s/{/{\\n/g') <(echo -e "\\\nreturn(0);\\\n}")) | view -s $file -
gcc -o $c_exec $c_file
rm $file

#void print_f(char *str) {
#  int i;
#  for(i = 0; i < strlen(str); i++) {
#    printf("%x ", *str);
#  }
#  putchar('\n');
#}

