#!/bin/bash

working_directory=$()

marco () {
    working_directory="$(pwd)"
}

polo () {
    if [[ $working_directory ]]; then
        cd "$working_directory" || (echo "cd command failed" && exit 1)
    else
        echo "The are no saved directory. Run marco command in order to save one"
    fi
}