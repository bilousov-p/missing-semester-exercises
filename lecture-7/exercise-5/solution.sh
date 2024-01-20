#! bin/bash

# Use this command to get time for all tree sort algotythms with cProfile
python3 -m cProfile -s tottime sorts.py | grep "tottime\|insertionsort\|quicksort\|quicksort_inplace"

# Output:
#   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#     1000    0.017    0.000    0.017    0.000 sorts.py:11(insertionsort)
# 33070/1000    0.015    0.000    0.016    0.000 sorts.py:32(quicksort_inplace)
# 34124/1000    0.015    0.000    0.023    0.000 sorts.py:23(quicksort)

# Bottlnecks:
#       - For insertionsort -> 36.0% - while j >= 0 and v < array[j]:
#       - For quicksort -> 31.1% - left = [i for i in array[1:] if i < pivot] and the same for calculating right
#       - For quicksort_inplace (not quite a bottlneck) -> 18.4% - for i in range(low, high): 

# Command to check memory usage, accourding to output the memory usage is the same for all three algorithms
python3 -m memory_profiler sorts.py

