#!/usr/bin/env python

from z3 import *

serial = [Int('x%s' % i) for i in range(20)]

s = Solver()

for i in range(0, 20):
	s.add(serial[i] >= 0, serial[i] < 10)

s.add(serial[3] != 0)
s.add(serial[9] != 0)

s.add((serial[15]) + (serial[4]) == 10)
s.add((serial[1]) * (serial[18]) == 2)
s.add((serial[15]) / (serial[9]) == 1)
s.add((serial[17]) - (serial[0]) == 4)
s.add((serial[5]) - (serial[17]) == -1)
s.add((serial[15]) - (serial[1]) == 5)
s.add((serial[1]) * (serial[10]) == 18)
s.add((serial[8]) + (serial[13]) == 14)
s.add((serial[18]) * (serial[8]) == 5)
s.add((serial[4]) * (serial[11]) == 0)
s.add((serial[8]) + (serial[9]) == 12)
s.add((serial[12]) - (serial[19]) == 1)
s.add((serial[9]) % (serial[17]) == 7)
s.add((serial[14]) * (serial[16]) == 40)
s.add((serial[7]) - (serial[4]) == 1)
s.add((serial[6]) + (serial[0]) == 6)
s.add((serial[2]) - (serial[16]) == 0)
s.add((serial[4]) - (serial[6]) == 1)
s.add((serial[0]) % (serial[5]) == 4)
s.add((serial[5]) * (serial[11]) == 0)
s.add((serial[10]) % (serial[15]) == 2)
s.add((serial[11]) / (serial[3]) == 0)
s.add((serial[14]) - (serial[13]) == -4)
s.add((serial[18]) + (serial[19]) == 3)

print s.check()
model = s.model()

for val in serial:
    print val, model[val]

key = ''
for val in serial:
    key += str(model[val])

print key