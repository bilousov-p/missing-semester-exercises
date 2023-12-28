#!/bin/bash

# This will print min, max and avg time of last boot times in seconds
log show --last 30d | grep -E "=== system boot:|Darwin Kernel" | cat bootlogs | tail -n10 | awk '{ print $1" "$2 }' | sed -E 's/\..*$//' | awk '{ datetime = $1" "$2; system("date -jf \"%Y-%m-%d %H:%M:%S\" \""datetime"\" +%s") }' | awk '{ line1 = $0; getline line2; boottime = line2 - line1; print boottime }' | R --no-echo -e 'x <- scan(file="stdin", quiet=TRUE); summary(x)'
