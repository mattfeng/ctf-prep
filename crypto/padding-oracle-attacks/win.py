#!/usr/bin/env python

# Broken CBC, PicoCTF 2013 Solution
# nc vuln.picoctf.com 4567

from pwn import *

r = remote('vuln.picoctf.com', 4567)
print r.recvline().strip() # blank line
print r.recvline().strip() # prompt

plain = list('HERE_IS_COMMAND:flag' + '\x0c' * 12)
c_ = [0] * 16
c__ = '0' * 16


for index in range(16):
    for i in range(0, 256):
        c_[15 - index] = i
        msg = ''.join(chr(c) for c in c_) + c__
        r.sendline(msg)
        resp = r.recvline().strip()
        if 'Error' not in resp:
            c_[15 - index] = (i + 2) ^
            print ''.join('%02x' % c for c in c_)
            break
