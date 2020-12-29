#!/bin/bash -e

if [ "$#" -ne 1 ]
then
    echo "ERROR! Please provide inputs"
    echo "$(basename -- $0) <approle>";
    exit 1;
fi
vault list auth/approle/role/$1/secret-id