# Compare_sum_and_cc

This repo tries to prove that the CC is much more time consuming than summation.

## Compile(Only for Linux)

just make with gfortran:

```bash
make
```

## Check the time consuming

<<<<<<< HEAD
We can use the command `time` to check the time, and my result is:
=======
We can use the command `time` to check the time, and my result on Centos is:
>>>>>>> 9b193c9d9dccf9a6481fa99d6bb27d513ff7a924

```bash
➜  compare_sum_and_cc git:(master) time ./cor
./cor  193.65s user 11.87s system 99% cpu 3:25.52 total
➜  compare_sum_and_cc git:(master) time ./sum
./sum  9.80s user 0.00s system 99% cpu 9.803 total
```
 We can get the consuming time of CC is 205.52/9.803 = 21.0 times of waveform summation.
