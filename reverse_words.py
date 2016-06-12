# reverses the order of the words in the sentence

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        splitWords = test.split()
        for x in range(len(splitWords) - 1, -1, -1):
            print(splitWords[x] + ' ', end="")
        print(' ')
