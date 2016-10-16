
import angr

angr.path_group.l.setLevel("DEBUG")

p = angr.Project('./whatamitoyou', load_options={'auto_load_libs': False})

win = 0x401984

path_group = p.factory.path_group()

path_group.explore(find=win)

if len(path_group.found) != 0:
    print path_group.found[0].state.posix.dumps(1)
else:
    print '[x] Nothing found.'
