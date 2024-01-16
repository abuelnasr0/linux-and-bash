#! /usr/bin/bash

read -p 'File: ' FILENAME
PATH=`readlink -f $FILENAME`
echo "Full path" $PATH
