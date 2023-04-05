#!/usr/bin/env bash
#
# Runs the clock ~(every second) and displays it using figlet
#


for i in {1..10000}; do clear && date "+%H : %M : %S" | figlet -c && sleep 1; done
