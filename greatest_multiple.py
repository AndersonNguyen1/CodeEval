# given numbers x and n, where n is a power of 2, print out the smallest multiple of n which is greater than or equal to x.

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = test.split(",")
        x = int(a[0])
        n = int(a[1])
        multiplier = 1
        while x >= n*multiplier:
            multiplier += 1
        print(n*multiplier)
