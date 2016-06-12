# the Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n–1) + F(n–2) when n>1. Given an integer n≥0, print out the F(n).

import sys

def fib(n):
    a, b = 0, 1
    for x in range(n):
        a, b = b, a+b
    return(a)

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        print(fib(int(test)))
