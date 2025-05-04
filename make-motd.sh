#!/bin/bash

export motd="$(ls motd_glyphs | shuf | head -n 1)"
export charactername=$(echo "$motd" | sed 's/_.*//' | sed 's/.*/\u&/')
export msg="$(shuf motd_texts.txt | head -n 1)"
cp motd_glyphs/"$motd" motd
echo -e "\n$charactername's message of the day: \"$msg\"" >> motd