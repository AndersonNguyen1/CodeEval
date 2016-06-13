# You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = test.strip().split(',')
        b = 0
        unique_array = []
        for x in range(0, len(a)):
            c = a[x]
            if b != c:
                unique_array.append(c)
                b = a[x]
        unique_string = ','.join([str(x) for x in unique_array])
        print(unique_string)
