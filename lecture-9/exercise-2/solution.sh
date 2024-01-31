#!/bin/bash

# Before that, download the "debian-12.4.0-arm64-netinst.iso" from mirror and SHA256SUMS from official Debian website

# Compute SHA256 hash of a file
shasum -a 256 debian-12.4.0-arm64-netinst.iso > SHA256SUMS_COMPUTED

# Compare
cmp SHA256SUMS_COMPUTED SHA256SUMS
