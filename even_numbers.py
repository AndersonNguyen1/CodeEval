# determine if the number is even or not

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = int(test)
        if a%2 == 0:
            print('1')
        else:
            print('0')
