#!/bin/zsh
#This shell can be run correctly in any shell interpreting {01..02} as 01,02 rather than 1,2.

for month in {01..12}; do
	echo "Downloading archive of 2013.${month}..."
	case $month in
		01 | 03 | 05 | 07 | 08 | 10 | 12)
			wget http://data.githubarchive.org/2013-$month-{01..31}-{0..23}.json.gz
			;;
		02)
			wget http://data.githubarchive.org/2013-02-{01..28}-{0..23}.json.gz
			;;
		*)
			wget http://data.githubarchive.org/2013-$month-{01..30}-{0..23}.json.gz
			;;
	esac
	echo "============="
done
echo "Congratulations! Download Succeeded. Bye!"