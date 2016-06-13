# deletes extra characters in a text file

import sys
import re

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = re.sub(r'[^a-zA-Z]', ' ', test)
        b = re.sub(r' +', ' ', a)
        print(b.strip().lower())
