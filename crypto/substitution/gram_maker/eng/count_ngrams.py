#!/usr/bin/env python

import sys

if len(sys.argv) < 3:
	print 'Usage: ./count_ngrams.py <sentence file> <N>'
	quit()

ngrams = {}

sentence_file = sys.argv[1]
N = int(sys.argv[2])

with open(sentence_file) as f:
	line_num = 0
	for line in f:
		line_num += 1
		sentence = line.split('\t')[1].lower().strip()
		for i in xrange(len(sentence) - N + 1):
			gram = sentence[i:i + N]
			try:
				ngrams[gram] += 1
			except:
				ngrams[gram] = 1
		print line_num


out = open('%s-grams_with_punc.txt' % str(N), 'w')

for gram, count in ngrams.iteritems():
	out.write('%s\t|\t%s\n' % (gram, count))