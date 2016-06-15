# Write a program which swaps letters' case in a sentence. All non-letter characters should remain the same.

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        for x in range(0, len(test) - 1):
            if test[x].isupper():
                print(test[x].lower(), end='')
            elif test[x].islower():
                print (test[x].upper(), end='')
            else:
                print (test[x], end='')
        print('')        
