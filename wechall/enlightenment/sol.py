#!/usr/bin/env python

import hackercodecs
from pwn import *

def str_or(a, b):
	ret = ''
	for i, j in zip(a, b):
		ret += chr(ord(i) | ord(j))
	return ret

red = open('red').read().strip().replace('\n', '').decode('bin')
green = open('green').read().strip().replace('\n', '').decode('bin')
blue = open('blue').read().strip().replace('\n', '').decode('bin')

print str_or(str_or(red, blue), green)

m2 = '''
01001100011010010110011101101000
00110111010111110100110001100101
01110110011001010110110000110010
00101110011100000110100001110000
'''

print m2.strip().replace('\n', '').decode('bin')

cyan = open('cyan').read().strip().replace('\n', '').decode('bin')
magenta = open('magenta').read().strip().replace('\n', '').decode('bin')
yellow = open('yellow').read().strip().replace('\n', '').decode('bin')

print xor(xor(cyan, magenta), yellow)