#!/bin/bash

path=`find $GOPATH/src -name "*$1*" -maxdepth 3 -mindepth 3`
echo "path:" $path

