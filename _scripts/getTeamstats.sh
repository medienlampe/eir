#!/bin/bash
TEAMID=237997
TEAMNAME=Invia
TARGETFOLDER=/root/eir/_data

wget https://apps.foldingathome.org/daily_team_summary.txt.bz2
bzip2 -dk daily_team_summary.txt.bz2

rm -f teamscore.txt
touch teamscore.txt
head -n +2 daily_team_summary.txt | tail -n1 >> teamscore.txt
grep -P "$TEAMID\t$TEAMNAME" daily_team_summary.txt >> teamscore.txt
sed 's/\t/,/g' < teamscore.txt > teamscore.csv
any-json teamscore.csv > $TARGETFOLDER/teamscore.json
rm -rf teamscore.txt teamscore.csv daily_team_summary.*