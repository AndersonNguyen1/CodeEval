# finds the first palindrome less than 1000

import sys
import math

initialNumber = 0
endNumber = 1000

def isPrime(x):
    for y in range(2, int(math.sqrt(x))+1):
        if x%y == 0:
            return False
    return True

def isPalindrome(x):
    x = str(x)
    for a in range(0, len(x)):
        if x[a] != x[len(x) - a - 1]:
            return False
    return True

for x in range(endNumber, initialNumber, -1):
    if isPrime(x) and isPalindrome(x):
        print(x)
        break
