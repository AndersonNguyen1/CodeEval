# a program which finds the next-to-last word in a string.

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = test.split()
        print(a[len(a) - 2])
