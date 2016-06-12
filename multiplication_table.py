# Print out the table in a matrix like fashion, each number formatted to a width of 4 (The numbers are right-aligned and strip out leading/trailing spaces on each line). The first 3 line will look like:

import sys

for x in range(1, 13):
    for y in range(1, 13):
        a = str(x*y)
        print(a.rjust(4, ' '), end="")
    print('')
