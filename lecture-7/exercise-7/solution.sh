#!/bin/bash

# Start minimal web-server on 4444 port
python3 -m http.server 4444

# Kill the process
kill $PID
