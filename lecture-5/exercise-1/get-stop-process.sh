#!/bin/bash

# Created process
sleep 10000

# Get process PID and info
pgrep -lf "sleep"

# Kill process by name without typing PID
pkill "sleep"
