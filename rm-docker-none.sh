#!/usr/bin/env bash
#
# Removes any docker images without a tag ("<none>")
#

function usage {
    cat <<EOF
$0
EOF
    exit 0
}

for cid in `docker images | awk '{if (match($2,"<none>")) print $3}'`; do docker rmi --force $cid; done
