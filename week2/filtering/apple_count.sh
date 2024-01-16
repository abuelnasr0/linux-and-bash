 #! /usr/bin/bash

cat fruits_in.txt | sort | uniq -c | grep Apple  > apple_count.txt
