#!/bin/bash

text="$1"
regex=""

for (( i=0; i<${#text}; i++ )); do
  char="${text:$i:1}"
  if [[ "$char" =~ [[:alpha:]] ]]; then
  	low=$(echo ${char} | tr '[[:upper:]]' '[[:lower:]]' )
  	upp=$(echo ${char} | tr '[[:lower:]]' '[[:upper:]]' )
    regex+="[${low}${upp}]"
  else
    regex+="$char"
  fi
done

# Compress to string to regex string
echo "$regex" | sed -E 's/( )+/\\s+/g'
