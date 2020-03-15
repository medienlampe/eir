#!/bin/bash
TEAMID=237997

wget https://apps.foldingathome.org/daily_user_summary.txt.bz2
bzip2 -dk daily_user_summary.txt.bz2

rm -f donorlist.txt
touch donorlist.txt
head -n +2 daily_user_summary.txt | tail -n1 >> donorlist.txt
grep -P "$TEAMID\+$" daily_user_summary.txt >> donorlist.txt
sed 's/\t/,/g' < donorlist.txt > donorlist.csv
any-json donorlist.csv > ../_data/donorlist.json
rm -rf donorlist.txt donorlist.csv daily_user_summary.*