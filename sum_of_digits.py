# Print out the sum of integers read from a file.

import sys
sum = 0

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = int(test)
        sum += a
    print(sum)
