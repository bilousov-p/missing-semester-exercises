#!/bin/sh

# This is a pre-commit file that will not allow the commit if "make" command failed
make > /dev/null
make_result=$?

make clean > /dev/null

if [ $make_result -ne 0 ]; then
    echo "make command failed; please see the error output above"
    exit 1
fi
