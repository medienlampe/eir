#!/bin/bash
TEAMID=237997

wget https://apps.foldingathome.org/daily_user_summary.txt.bz2
bzip2 -dk daily_user_summary.txt.bz2

rm -f donorlist.txt
touch donorlist.txt
head -n +2 daily_user_summary.txt | tail -n1 >> donorlist.txt
grep -e "$TEAMID\+$" daily_user_summary.txt >> donorlist.txt
jq -R -c 'split("\t")' < donorlist.txt | jq -s -c . > ../_data/memberstats.json

rm -rf donorlist.txt daily_user_summary.*