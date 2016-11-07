#!/usr/bin/env python

from ngram_score import ngram_score
from word_score import word_score
from IPython import embed
import random
import re
import string


class Substitution():
	def __init__(self, key):
		self.key = key
		self.original = ''.join(chr(i) for i in xrange(256))

	def decipher(self, message):
		trans = string.maketrans(''.join(self.key), self.original)
		return message.translate(trans)

quadgram_loc = '/home/pwn/ctf-prep/crypto/substitution/quadgrams_with_punc.txt'
fitness = ngram_score(quadgram_loc, sep='\t|\t')

ctext = open('./message').read().strip().replace('\n', '').replace(' ','')
print 'ciphertext:', ctext
ctext = ctext.decode('hex')

maxkey = [chr(i) for i in range(0, 256)]
maxscore = -99e9
parentscore, parentkey = maxscore, maxkey[:]

# substitution cipher solver where all 256 characters are used

i = 0
while True:
    i += 1

    random.shuffle(parentkey)
    deciphered = Substitution(parentkey).decipher(ctext)
    parentscore = fitness.score(deciphered)

    count = 0
    while count < 1000:
        a = random.randint(0, 255)
        b = random.randint(0, 255)
        child = parentkey[:]

        # swap two characters in the child
        child[a], child[b] = child[b], child[a]
        deciphered = Substitution(child).decipher(ctext)
        score = fitness.score(deciphered)

        # if the child was better, replace the parent with it
        if score > parentscore:
            parentscore = score
            parentkey = child[:]
            count = 0
        count = count+1

    # keep track of best score seen so far
    if parentscore > maxscore:
        maxscore, maxkey = parentscore, parentkey[:]
        print '\nbest score so far:',maxscore,'on iteration',i
        ss = Substitution(maxkey)
        print '    best key: ' + ''.join(maxkey).encode('hex')
        print '    plaintext: '+ ss.decipher(ctext)