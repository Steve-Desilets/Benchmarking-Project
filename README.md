# Benchmarking-Project

We see that Go, Python, and R were able to successfully generate OLS regressions and scatterplots for our Anscombe Quartet data.  As expected, we see that the OLS regression lines for each of the four datasets is the same: y = 3 + 0.5x.

We see that the benchmarking experiment trial runtimes ranged from 23,520 to 87,650 microseconds, with a median runtime of 26,360 microseconds.  The runtime distribution also exhibited somewhat of a right skew, causing the mean runtime of 26,846 microseconds to be a bit greater than the median runtime.

For the R benchmarking experiments, we see that the distribution of trial runtimes ranged from 0.037 to 0.070 seconds and had a mean of 0.043 seconds.  We also see that there was some righ skew to the runtimes distribution - leading the mean of 0.046 seconds to be slightly greater than the median.
