#!/bin/bash -e

if [ "$#" -ne 2 ]
then
    echo "ERROR! Please provide inputs"
    echo "$(basename -- $0) <approle> <secret-id-accessor>, you can get accessors by running list-secret-ids.sh";
    echo "It is ideally a good idea to store secret-id-accessor somewhere when you generate secret id"
    exit 1;
fi
vault write auth/approle/role/$1/secret-id-accessor/lookup secret_id_accessor=$2