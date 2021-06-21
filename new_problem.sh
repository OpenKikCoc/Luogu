#!/bin/sh

# by binacs

pwd=$(pwd)
from="$pwd/MDTemplate/Problem.md"

if [ $1 != "" ]; then
    target_file="$pwd/Problems"
    to="$pwd/Problems/P$1.md"

    if [ ! -f "$to" ]; then
        cp $from $to
    else
        echo "Ignore repeat file."
    fi
fi