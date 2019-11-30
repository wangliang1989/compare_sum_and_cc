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
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./sum
./sum  172.15s user 3.17s system 85% cpu 3:24.68 total
liang@Pathfinder ~/work/compare_sum_and_cc ±master » time ./cor
./cor  2889.51s user 39.92s system 91% cpu 53:04.69 total
```

The "user" is the time of the User Mode.
The "system" is the time of the System Mode.
The "total" is the real time.
The "cpu" means cpu_usage = (user_time + sys_time)/total * 100%
