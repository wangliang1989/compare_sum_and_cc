# Compare_sum_and_cc

This repo tries to prove that the CC is much more time consuming than summation.

## Compile

just make with gfortran:

```bash
make
```

## Check the time consuming

We can use the command `time` to check the time.

My result on a Lenovo PC with Centos is: 

```bash
➜  compare_sum_and_cc git:(master) time ./sum
./sum  215.30s user 0.18s system 83% cpu 4:19.54 total
➜  compare_sum_and_cc git:(master) time ./cor
./cor  3664.67s user 279.84s system 89% cpu 1:13:18.37 total
```
My result on my Macbook Pro is:

```bash
➜  compare_sum_and_cc git:(master) time  ./cor
./cor  298.25s user 23.36s system 88% cpu 6:04.85 total
➜  compare_sum_and_cc git:(master) time ./sum
./sum  16.91s user 0.01s system 79% cpu 21.313 total
```

My result on a VPS with Ubuntu:
```bash
➜  compare_sum_and_cc git:(master) time ./sum
./sum  212.58s user 0.23s system 94% cpu 3:45.75 total
➜  compare_sum_and_cc git:(master) time ./cor
./cor  3989.87s user 292.20s system 96% cpu 1:13:47.86 total
```

The "user" is the time of the User Mode.
The "system" is the time of the System Mode.
The "total" is the real time.
The "cpu" means cpu_usage = (user_time + sys_time)/total * 100%
