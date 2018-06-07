#!/usr/bin/env bash

for dir in /Users/jseanj/gopath/src/github.com/*
do
    if test -d $dir
    then
        for subdir in $dir/*
        do
            if test -d $subdir
            then
                echo $subdir
                cd $subdir
                git pull
            fi
        done
    fi
done
