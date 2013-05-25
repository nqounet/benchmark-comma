# Benchmark comma
```
# Benchmark: timing 1000000 iterations of legacy, regexp1, regexp2...
#     legacy: 2.34067 wallclock secs ( 2.34 usr +  0.00 sys =  2.34 CPU) @ 427350.43/s (n=1000000)
#    regexp1: 8.39709 wallclock secs ( 8.39 usr +  0.00 sys =  8.39 CPU) @ 119189.51/s (n=1000000)
#    regexp2: 6.03389 wallclock secs ( 6.03 usr +  0.00 sys =  6.03 CPU) @ 165837.48/s (n=1000000)
#             Rate regexp1 regexp2  legacy
# regexp1 119190/s      --    -28%    -72%
# regexp2 165837/s     39%      --    -61%
# legacy  427350/s    259%    158%      --
1..1
ok 1 - benchmark
perl comma.pl  18.21s user 0.02s system 99% cpu 18.226 total
```