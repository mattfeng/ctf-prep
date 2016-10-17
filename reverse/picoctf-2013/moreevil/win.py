#!/usr/bin/env python

import subprocess as sp

def get_inscount():
	return int(open('inscount.out').read().strip().split(' ')[1])

def mk_input(array):
	ostream = open('input', 'w')
	ostream.write(''.join(array))
	ostream.close()

flag = ['A'] * 19
search_space = '{} _0123456789abcdefghijklmnopqrstuvwxyz?./'

cmd = 'pin -t inscount0.so -- ./moreevil < input'

FNULL = open('/dev/null', 'w')

for i in range(0, 19):
	inscounts = []
	for char in search_space:
		flag[i] = char
		mk_input(flag)
		tmp_flag = ''.join(flag)
		sp.call(cmd, stdout=FNULL, stderr=sp.STDOUT, shell=True)
		num_ins = get_inscount()
		print '[i] trying:', tmp_flag, num_ins
		inscounts.append(num_ins)

	flag[i] = search_space[inscounts.index(max(inscounts))]
	print 'so far:', ''.join(flag)
