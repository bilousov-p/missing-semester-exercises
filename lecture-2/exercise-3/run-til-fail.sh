#!/usr/bin/env bash

script_to_run="$1"

output_path="./output"
output_out="$output_path/stdout.txt"
output_err="$output_path/stderr.txt"

run_count=0

# create a temporary directory for files with script's output
mkdir "$output_path"

# give execution permissions for script
chmod u+x "$script_to_run"

while true; do
    run_count=$((run_count + 1))
    
    $script_to_run >> "$output_out" 2>> "$output_err"

    [[ $? -eq 0 ]] || break
done

echo "Script's STDOUT:"
cat "$output_out"

echo "Script's STDERR:"
cat "$output_err"

# remove temp directory with output
rm -r "$output_path"

echo "Done executing script: $script_to_run. Got erron on execution number: $run_count"