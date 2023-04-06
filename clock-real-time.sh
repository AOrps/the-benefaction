#!/usr/bin/env bash
#
# Runs the clock ~(every second) and displays it using figlet
# 


#for i in {1..10000}; do clear && date "+%H : %M : %S" | figlet -c && sleep 1; done
for i in {1..10000}; do clear && echo -e "\n\n" && date "+%I : %M : %S" | figlet -c && sleep 1; done

# the `echo -e '\n\n'` is to buffer the text

: '
tput cols - Get Columns
tput lines - Get Rows
'

