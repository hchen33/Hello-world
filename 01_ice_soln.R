###############################################################################
# Part 1
###############################################################################

# Install the latest version of R from http://www.r-project.org.

# Install the latest version of RStudio from http://www.rstudio.com.

# From ICON, download Files > lectures >
# 01_Introduction_to_R_and_RStudio.zip and decompress the zip file onto
# your computer's hard drive. Take note of the directory which contains
# the decompressed contents. (If you're reading this file on your
# computer, you probably have already completed this step!)

# Start RStudio, and then use RStudio to set the working directory to be
# the "ice" subfolder of the folder where you decompressed the contents
# of the zip file. This can either be done with the Files window pane
# or within the R console using the setwd(...) command. Also make sure
# the Files pane is set to the same working directory. Do not save the
# setwd(...) command in this script!

###############################################################################
# Part 2
###############################################################################

# To make sure your environment is clean, execute the command "rm(list =
# ls())". Save the command in this script.


rm(list = ls())


# Uncomment and execute the "read.csv" line below. If you get an error
# message (in a red font), then you probably did not set the working
# directory correctly. Keep trying until the above command works.


boston <- read.csv("boston2013.csv")


###############################################################################
# Part 3
###############################################################################

# Calculate the sum of 10 and 5. This can either be done in the script
# or in the console. For commands executed within a script, it is often
# a good idea to wrap the command inside the print(...) command to
# ensure that the output is printed when the script is sourced.


print(10 + 5)


# Calculate the square root of pi. If you need help, try
# "help("groupGeneric")" and "?pi" in the console (not in the script).


print(sqrt(pi))


# In this script, write the following lines of code to save sqrt(pi) in
# the variable x and to print the value of x:
#
#     x <- sqrt(pi)
#     print(x)
#
# Press the Source button in RStudio to run your entire script so far,
# including the lines involving x. If done correctly, you should see x
# in the Environment pane and the value of x printed to the console.


x <- sqrt(pi)
print(x)


# In this script, calculate x^2. Press the Run button in RStudio while
# your cursor is on that single line, and you should get back pi in the
# console.


print(x^2)


# Use the inequality "<" to determine if the reciprocal of x is less than
# 0.1.


print(1/x < 0.1)


# In the console, investigate "example(Sys.Date)" and "help("Ops.Date")"
# to learn how to use the Sys.Date(...) command. Then, in the script,
# calculate and print the date 173 days ago. Wrap with the print(...)
# command.


print(Sys.Date() - 173)


###############################################################################
# Part 4
###############################################################################

# R includes by default a package called datasets, which contains many
# interesting data sets. In the console, issue the command "library(help
# = "datasets")" to see an entire list of the data sets provided by this
# package.


# library(help = "datasets")


# One of the data sets is called state.x77. In this script, uncomment and
# run the following command, which loads state.x77 into an object called
# states (we will learn more about the as.data.frame(...) command in
# later weeks):


states <- as.data.frame(state.x77)


# Examine the first few rows of states in either the console or in the
# script. If you need help, try "help("head")".


print(head(states))


# Examine a statistical summary of states by using the command
# summary(...).


print(summary(states))


# Examine the structure of states using the command str(...).


print(str(states))


# Calculate the mean of the population of all 50 states. If you need
# help, try "help(mean)". In order to reference the Population column of
# the data set, use the "$" operator, i.e., "states$Population".


print(mean(states$Population))


# Use the command "plot(states$Illiteracy, states$`Life Exp`)" to plot
# life expectancy on the y-axis against illiteracy on the x-axis. For
# help, try "?plot", and note that, since the column for life expectancy
# contains a space, we have to use the tick marks.


plot(states$Illiteracy, states$`Life Exp`)


###############################################################################
# Part 5
###############################################################################

# In the console, update all of your packages via the update.packages
# command. Such a command would not typically be put in a script.


# update.packages()


# Install the swirl package. For help, try "?install.packages" or use
# the RStudio Packages window pane. Note that commands to install
# packages are not typically executed from a script.


# install.packages("swirl")


# In the script, make sure the swirl package is loaded using the library
# command. Run the command. Note: Such commands *are* usually put in
# scripts.


library(swirl)


# Follow the swirl instructions to install the R Programming course, to
# select it, and to complete the Basic Building Blocks lesson.

###############################################################################
# Part 6
###############################################################################

# As time allows, investigate the data in boston2013.csv, which should
# already have been loaded from above, to answer the following questions
# regarding the Boston Marathon in 2013, which was interrupted by a
# terrorist bombing. Save your commands in your script.

# What was the finish time (in minutes) of the fastest runner?


print(min(boston$FinishMinutes, na.rm = TRUE))


# At what approximate time (relative to the 24-hour clock) did the bomb
# explode?


# Calculate minutes after 9:00 of finish times
minutes <- boston$MinutesStartAfterNine + boston$FinishMinutes
# Calculate hours after 9:00 of finish times
hours <- minutes/60
# Calculate 24-hour clock times
times <- 9 + hours
# Take the maximum ignoring NAs to get approximate time
print(max(times, na.rm = TRUE))


###############################################################################
# Part 7
###############################################################################

# Save your script as "ice.R", and then upload and commit it to a new
# GitHub "Homework 00" repository using this link:
#
#   https://classroom.github.com/a/UzZPqTCM
#
# You can also take a look at this short video tutorial:
#
#   https://youtu.be/8jY5wCiluNw
