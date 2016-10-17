#!/usr/bin/env python

# Broken CBC, PicoCTF 2013 Solution
# nc vuln.picoctf.com 4567

from pwn import *

r = remote('vuln.picoctf.com', 4567)
print r.recvline().strip() # blank line
print r.recvline().strip() # prompt

plain = list('flag' + '\x0c' * 12)
c_ = [0] * 16  # C'
dc_ = [0] * 16 # D(C(2)) - intermediate value of C(2) - \x00 * 16

junk = '0' * 16

for i in range(16): # indices
    for j in range(0, 256): # try all characters
        c_[15 - i] = j

        enc_cmd = ''.join(chr(c) for c in c_) + junk

        r.sendline(enc_cmd)
        resp = r.recvline().strip()

        if 'Error' not in resp:
            dc_[15 - i] = (i + 1) ^ j
            for k in range(i + 1):
                c_[15 - k] = (i + 2) ^ dc_[15 - k]  # set each value including/after i so that padding is correct
            print 'C\' = ' + ''.join('%02x' % c for c in c_)
            print 'D(C) = ' + ''.join('%02x' % c for c in dc_)
            break
    else:
        print '[x] FAILED'
        quit()

# dc_ = '20dc6883b22b71e6344815e9c4e005e1'

payload = xor(dc_, plain)
r.sendline(payload + '0' * 16)
r.interactive()

# key: NOW_YOURE_BASICALLY_A_POET