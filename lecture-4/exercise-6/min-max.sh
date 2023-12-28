#!/bin/bash

# Get Min and Max for second column of table with ID = table4
curl -s https://stats.wikimedia.org/EN/TablesWikipediaZZ.htm | pup "table#table4 td:nth-child(2) text{}" | tail --lines +3 | R --no-echo -e 'x <- scan(file="stdin", quiet=TRUE); max(x); min(x)'
