# CBC-R, or Reversing CBC Decryption (Encryption through Decryption)

With the input `C' || C(2)`, (`C(2) = \x00 * 16`) we have
```
P'(2) = D(C(2)) XOR C'`
```
If we want to arbitrarily decrypt a message `C(2)` into `P'(2)`, then we need to know what `D(C(2))` is equal to.

We can figure out `D(C(2))` through a padding oracle attack.

In particular,
```
D(C(2))[i] = P'(2)[i] XOR C'[i]
```

By trying out all possible values of `C'[i]`, we can make sure the padding is correct, which would force `P'(2)[i]` to be known. From there we can compute `D(C(2))` byte by byte.

Afterwards, we compute `PLAINTEXT XOR D(C(2))` to get `C'`, which we then send to the oracle.
