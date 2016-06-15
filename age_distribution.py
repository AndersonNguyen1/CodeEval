# print the string that corresponds with the person's age

import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        a = int(test)
        if a >= 0 and a <= 2:
            print("Still in Mama's arms")
        elif a == 3 or a == 4:
            print('Preschool Maniac')
        elif a >= 5 and a <= 11:
            print('Elementary school')
        elif a >= 12 and a <= 14:
            print('Middle school')
        elif a >= 15 and a <= 18:
            print('High school')
        elif a >= 19 and a <= 22:
            print('College')
        elif a >= 23 and a <= 65:
            print('Working for the man')
        elif a >= 66 and a <= 100:
            print('The Golden Years')
        else:
            print('This program is for humans')
