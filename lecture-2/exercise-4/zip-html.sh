#!/usr/bin/env bash

# this two flags required to allow usage on files with spaces:
#   -print0 -> divides results with invisible ascii nul character
#   -0 -> splits provided output by ascii nul character (by default xargs splits by spaces and tabs)
find html_to_zip -iname '*.html' -print0 | xargs -0 zip html.zip