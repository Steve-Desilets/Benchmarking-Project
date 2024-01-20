# Benchmarking-Project

We see that Go, Python, and R were able to successfully generate OLS regressions and scatterplots for our Anscombe Quartet data.  As expected, we see that the OLS regression lines for each of the four datasets is the same: y = 3 + 0.5x.

We see that the Python benchmarking experiment trial runtimes ranged from 23,520 to 87,650 microseconds, with a median runtime of 26,360 microseconds.  The runtime distribution also exhibited somewhat of a right skew, causing the mean runtime of 26,846 microseconds to be a bit greater than the median runtime.

For the R benchmarking experiments, we see that the distribution of trial runtimes ranged from 10,390 to 201,910 microseconds and had a median of 14,350 microseconds.  We also see that there was right skew to the runtimes distribution - leading the mean of 30,220 microseconds to be greater than the median.

We see that for the Go benchmarking experiment trial runtimes ranged from 0 to 2,670 microseconds. We also see that the mean benchmark experiment trial runtime using Go was 590.64 microseconds.  

If I were to make a recommendation to management based on the findings of this study, I would encourage leadership to consider its organizational objectives when deciding whether to leverage Python, R, or Go for future data science projects.  That's because each of these three languages comes with its own distinct advantages and disadvantages, which we will review below.

The advantage of leveraging Go is that it was the clear winner of the benchmarking experiment.  Go's average trial runtime to compute the Anscombe regression lines of 591 microseconds was much faster than the average times for Python and Go of 26,846 and 30,220 microseconds, respectively.  That said, the primary disadvantage of leveraging Go is that many data scientists at the organization may not be as familiar with Go and there may be fewer resources on the internet to help data scientists debug their Go code compared to resources available for other programming languages. For example, the data scientist running this experiment really wanted to create more Go visualizations, like scatterplots of the Anscombe Quartet data and boxplots / histograms of the runtime distributions, for this project. However, this was his very first time writing a full-length program in Go, and when he ran into roadblocks, it was hard to find resources on the internet capable of helping him set up those visualizations in Go.  

The advantage of leveraging Python _____________________________-

The advantage of leveraging R ___________________________________

All that said, different organizations may come to different conclusions about which programming language would best help them to achieve their data science objectives. __________________________________
