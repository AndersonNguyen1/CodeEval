## adds all the prime numbers in between the initialNumber and endNumber

import sys
import math

initialNumber = 0
endNumber = 1000
primeSum = 0
primeCount = 0
x = 2

def isPrime(x):
    for y in range(2, int(math.sqrt(x))+1):
        if x%y == 0:
            return False
    return True

while(primeCount < 1000):
    if isPrime(x):
        primeSum += x
        primeCount += 1
    x += 1

print(primeSum)
