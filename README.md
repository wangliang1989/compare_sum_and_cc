# Compare_sum_and_cc

This repo tries to prove that the CC is much more time consuming than summation.

## Compile(Only for Linux)

just make with gfortran:

```bash
make
```

## Check the time consuming

We can use the command `time` to check the time, and my result on Centos is:

```bash
➜  compare_sum_and_cc git:(master) time ./cor
./cor  22.01s user 0.00s system 99% cpu 22.015 total
➜  compare_sum_and_cc git:(master) time ./sum
./sum  1.18s user 0.00s system 99% cpu 1.183 total
```
 We can get the consuming time of CC is 22.015/1.183 = 18.6 times of summation.
