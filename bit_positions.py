# given a number n and two integers p1,p2 determine if the bits in position p1 and p2 are the same or not. Positions p1 and p2 are 1 based.

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = test.split(',')
        n = bin(int(a[0]))[2:]
        p1 = int(a[1])
        p2 = int(a[2])

        if n[(len(n) - p1)] == n[(len(n) - p2)]:
            print('true')
        else:
            print('false')
