#!/bin/bash

# This will parse table 4, sum up the first and second columns and then take the differece of this sums
curl -s https://stats.wikimedia.org/EN/TablesWikipediaZZ.htm | pup "table#table4 td:nth-child(2), table#table4 td:nth-child(3) text{}" | grep -v -E "^\D+$" | rs -e -t 94 | awk '{ sum1+=$1; sum2+=$2 } END { print sum1 - sum2 }'
