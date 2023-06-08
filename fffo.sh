#!/usr/bin/env bash
#
# fffo.sh - (GNU/BASH) Framework for File Organization
#
# Given a set of semi-homogenous/heterogenous files, organize the files via a standard pattern 
#


: '
Take a set of file, ex:
f{1,11,111,1011,8}.x -> f1.x f11.x f111.x f1011.x f8.x


Have it output either:
f1.x f8.x f11.x f111.x f1011.x

Or
f0001.x f0008.x f0011.x f0111.x f1011.x

'


function usage {
    cat <<EOF
    $0  
EOF
}

while getopts ""
