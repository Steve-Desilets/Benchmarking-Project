# The Anscombe Quartet (R)

# demonstration data from
# Anscombe, F. J. 1973, February. Graphs in statistical analysis. 
#  The American Statistician 27: 17–21.

# define the anscombe data frame
anscombe <- data.frame(
    x1 = c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5),
    x2 = c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5),
    x3 = c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5),
    x4 = c(8, 8, 8, 8, 8, 8, 8, 19, 8, 8, 8),
    y1 = c(8.04, 6.95,  7.58, 8.81, 8.33, 9.96, 7.24, 4.26,10.84, 4.82, 5.68),
    y2 = c(9.14, 8.14,  8.74, 8.77, 9.26, 8.1, 6.13, 3.1,  9.13, 7.26, 4.74),
    y3 = c(7.46, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73),
    y4 = c(6.58, 5.76,  7.71, 8.84, 8.47, 7.04, 5.25, 12.5, 5.56, 7.91, 6.89))




# Define the function for the benchmarking test that will fit OLS regression models and plot the Anscombe Quartet

runtimes_list <- list()

benchmark_function <- function() {
  
  start_time <- Sys.time()

# show results from four regression analyses
  with(anscombe, print(summary(lm(y1 ~ x1, data = anscombe))))
  with(anscombe, print(summary(lm(y2 ~ x2, data = anscombe))))
  with(anscombe, print(summary(lm(y3 ~ x3, data = anscombe))))
  with(anscombe, print(summary(lm(y4 ~ x4, data = anscombe))))

# place four plots on one page using standard R graphics
# ensuring that all have the same scales
# for horizontal and vertical axes


  par(mfrow=c(2,2), mar=c(5.1, 4.1, 4.1, 2.1))
  with(anscombe, plot(x1, y1, xlim=c(2,20), ylim=c(2,14), pch = 19, 
      col = "darkblue", cex = 1.5, las = 1, xlab = "x1", ylab = "y1"))  
  title("Set I")
  with(anscombe,plot(x2, y2, xlim=c(2,20), ylim=c(2,14), pch = 19, 
      col = "darkblue", cex = 1.5, las = 1, xlab = "x2", ylab = "y2"))
  title("Set II")
  with(anscombe,plot(x3, y3, xlim=c(2,20), ylim=c(2,14), pch = 19, 
      col = "darkblue", cex = 1.5, las = 1, xlab = "x3", ylab = "y3"))
  title("Set III")
  with(anscombe,plot(x4, y4, xlim=c(2,20), ylim=c(2,14), pch = 19, 
      col = "darkblue", cex = 1.5, las = 1, xlab = "x4", ylab = "y4"))
  title("Set IV")
  
  end_time <- Sys.time()
  
  trial_run_time = end_time - start_time
  
  append(runtimes_list, trial_run_time)
  
}


# Run the Benchmarking Test function 100 times and compile the runtimes 

for (x in 1:100) {
  benchmark_function()
}




# We see that Python was able to successfully generate OLS regressions and scatterplots for 
# our Anscombe Quartet data.

# As expected, we see that the OLS regression lines for each of the four datasets 
# is the same: y = 3 + 0.5x, and we see that each of the quartet datasets has a 
# R-squared equal to 0.67 and an adjusted R-squared equal to 0.63.

# Let's take a look at the runtimes for each of the experimental trials.

print(runtimes_list)

# Let's print summary statistics for the trial runtimes gathered

summary(runtimes_list)

# Let's create a boxplot and histogram to visualize these experimental trial runtime distributions.

boxplot(runtimes_list)


hist(runtimes_list)






