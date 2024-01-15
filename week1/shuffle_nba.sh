#! /usr/bin/bash

head -n 1 nba_2017.csv > shuf_nba_2017.csv
tail -n +2 nba_2017.csv | shuf >> shuf_nba_2017.csv
