#!/bin/bash

# for d in `find . -maxdepth 1 -type d | tail -n +2`; do echo $d && cd $d && git status && echo -e "===================\n" && cd .. ; done


# More complete solution that doesn't get caught if a file found isn't a git repo
for d in `find . -name '.git' -type d | rev | cut -d'/' -f1 --complement | rev`; do echo $d && cd $d && git status && echo -e "===================\n" && cd .. ; done

