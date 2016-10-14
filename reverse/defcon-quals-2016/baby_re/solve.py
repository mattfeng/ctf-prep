#!/usr/bin/env python

import angr

p = angr.Project('./baby-re', load_options={'auto_load_libs': False})

win = 0x40293b
lose = 0x402941

path_group = p.factory.path_group()

path_group.explore(find=win, avoid=lose)

if len(path_group.found) != 0:
    print path_group.found[0].state.posix.dumps(1)
else:
    print '[x] Nothing found.'