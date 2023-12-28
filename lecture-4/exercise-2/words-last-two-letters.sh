# Returns top 3 most common last two letters from dict/words (only for words with three or more 'a' characters and don't end with 's)
cat /usr/share/dict/words | grep -E '^(.*[Aa]+.*[Aa]+.*[Aa]+.*)$' | grep -v "'s$" | sed -E 's/^.*(.{2})$/\1/' | sort | uniq -c | sort -nk1,1 -r | head -n3

# Count of two letter combination for such words
cat /usr/share/dict/words | grep -E '^(.*[Aa]+.*[Aa]+.*[Aa]+.*)$' | grep -v "'s$" | sed -E 's/^.*(.{2})$/\1/' | sort | uniq -c | sort -nk1,1 -r | wc -l
