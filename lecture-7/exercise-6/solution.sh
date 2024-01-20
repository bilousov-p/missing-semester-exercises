#!/bin/bash

# Whith commented lines the fib0 is called 21 times
pycallgraph graphviz -- ./fib.py

# With uncommented lines each fibN function is called exectly one time
pycallgraph graphviz -- ./fib-new.py
