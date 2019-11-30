# Compare_sum_and_cc

This repo tries to prove that the CC is much more time consuming than summation.

## Compile

just make with gfortran:

```bash
make
```

## Check the time consuming

We can use the command `time` to check the time.

3 times tests on Lenovo PC with Centos: 

```bash
➜  compare_sum_and_cc git:(master) time ./cor
./cor  48.87s user 1.97s system 89% cpu 56.927 total
➜  compare_sum_and_cc git:(master) time ./cor
./cor  49.83s user 2.06s system 85% cpu 1:00.98 total
➜  compare_sum_and_cc git:(master) time ./cor
./cor  49.67s user 2.05s system 85% cpu 1:00.50 total
➜  compare_sum_and_cc git:(master) time ./sum
./sum  2.07s user 0.00s system 85% cpu 2.435 total
➜  compare_sum_and_cc git:(master) time ./sum
./sum  2.02s user 0.00s system 87% cpu 2.328 total
➜  compare_sum_and_cc git:(master) time ./sum
./sum  2.09s user 0.00s system 72% cpu 2.899 total
```
3 times tests on Macbook Pro:

```bash
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./cor
./cor  38.71s user 0.60s system 92% cpu 42.556 total
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./cor
./cor  37.92s user 0.47s system 96% cpu 39.811 total
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./cor
./cor  37.98s user 0.46s system 95% cpu 40.396 total
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./sum
./sum  1.59s user 0.02s system 96% cpu 1.672 total
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./sum
./sum  1.50s user 0.02s system 97% cpu 1.559 total
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./sum
./sum  1.56s user 0.02s system 96% cpu 1.641 total
```

The "user" is the time of the User Mode. This is just what we need.

The "system" is the time of the System Mode.

The "total" is the real time.

The "cpu" means cpu_usage = (user_time + sys_time)/total * 100%
