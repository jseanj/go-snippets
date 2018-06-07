#!/bin/bash

path="."
if test -z $path
then
    echo "$1 not exist"
else
    echo "--------------------------------------------------"
    echo "path:" $path
    echo "--------------------------------------------------"

    find $path -name "*.go" | grep "_test.go" -v | grep vendor -v | xargs wc -l
    files=`find $path -name "*.go" | grep "_test.go" -v | grep vendor -v`
    echo "--------------------------------------------------"
    cat $files | grep -v ^$ | grep -v ^\/\/ | wc -l
    echo "--------------------------------------------------"
fi

