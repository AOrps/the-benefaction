#!/bin/bash

for d in `find . -maxdepth 1 -type d | tail -n +2`; do echo $d && cd $d && git status && echo -e "===================\n" && cd .. ; done
