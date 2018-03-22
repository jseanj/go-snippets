#!/bin/bash

for rootDir in $GOPATH/src/github.com/*
do
    if test -d $rootDir
    then
        for projectDir in $rootDir/*
        do
            if test -d $projectDir
            then
                projectName=`echo $projectDir | awk -F"/" '{print $NF}'`
                cd $projectDir
                for subDir in $projectDir/*
                do
                    if test -d $subDir
                    then
                        cd $subDir
                        imports=`go list -e -f "{{.Imports}}"`
                        for import in ${imports[@]}
                        do
                            if [[ $import = *"github"* && $import != *"$projectName"* ]]; then
                                echo $import | sed 's/^\[//g' | sed 's/\]$//g'
                            fi
                        done
                    fi
                done

                imports=`go list -e -f "{{.Imports}}"`
                for import in ${imports[@]}
                do
                    if [[ $import = *"github"* && $import != *"$projectName"* ]]; then
                        echo $import | sed 's/^\[//g' | sed 's/\]$//g'
                    fi
                done
            fi
        done
    fi
done