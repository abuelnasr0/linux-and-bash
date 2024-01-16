#! /usr/bin/bash

read -p 'File: ' FILENAME
read -p 'word: ' S_WORD
read -p 'change to: ' T_WORD
tr '$S_WORD' '$T_WORD' < $FILENAME
