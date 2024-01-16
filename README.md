# Benchmarking-Project

We see that Python and R were able to successfully generate OLS regressions and scatterplots for our Anscombe Quartet data.  As expected, we see that the OLS regression lines for each of the four datasets is the same: y = 3 + 0.5x, and we see that each of the quartet datasets has a R-squared equal to 0.67 and an adjusted R-squared equal to 0.63.

For the Python benchmarking experiments, we see that the trial runtimes ranged from 0.34 to 0.81 seconds, with a median runtime of 0.36 seconds.  The runtime distribution also exhibited a right skew, causing the mean runtime of 0.38 seconds to be a bit greater than the median runtime.

For the R benchmarking experiments, we see that the distribution of trial runtimes ranged from 0.037 to 0.070 seconds and had a mean of 0.043 seconds.  We also see that there was some righ skew to the runtimes distribution - leading the mean of 0.046 seconds to be slightly greater than the median.
