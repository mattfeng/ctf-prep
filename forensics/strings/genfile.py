#!/usr/bin/env python

from pwn import *

obfuscate = "hello there, the flag is flag{strings_can_be_hidden_too}"

print xor(obfuscate, '\x31')
