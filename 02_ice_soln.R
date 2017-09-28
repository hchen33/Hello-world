###############################################################################
# Part 0
###############################################################################

# Set the working directory to be the "ice" subfolder containing this
# file. Remember: please do not save the setwd(...) command in a script.

###############################################################################
# Part 1
###############################################################################

# Use RStudio's graphical interface to import allstate.csv. You can also
# read about the data in the included PDF file allstate_description.pdf.

# As an alternative method, now use read.csv(...) to import the data
# directly from the R console. Save the data frame in a variable called
# df.


df <- read.csv("allstate.csv")


# Use the View(df) from the console to get a spreadsheet-like view of the
# data frame.

# Examine the structure of df using str(...).


print(str(df))


# Examine the column names of df. Also look at the number of columns.


print(names(df))
print(ncol(df))


# Examine the number of rows of df.


print(nrow(df))


# Calculate the total memory used by df in megabytes.


print(format(object.size(df), units = "Mb"))


###############################################################################
# Part 2
###############################################################################

# Examine the seventh entry of the third column of df.


print(df[7, 3])


# Use the : symbol to select rows 7 to 11 and columns 3 to 5.


print(df[7:11, 3:5])


# Now use the c(...) command to select rows 7 and 11 (not "7 to 11") and
# columns state and cost.


print(df[c(7, 11), c("state", "cost")])


###############################################################################
# Part 3
###############################################################################

# Reread the data into df using the following definition of colClasses:

colClasses <- c("character", "character", "factor", "factor",
    "character", "factor", "character", "integer", "factor", "integer",
    "factor", "factor", "integer", "integer", "factor", "factor",
    "integer", "factor", "factor", "factor", "factor", "factor",
    "factor", "factor", "integer")


df <- read.csv("allstate.csv", colClasses = colClasses)


# Rexamine the structure of df and note the changes compared to before.


print(str(df))


# Examine the levels of the factor related to car value.


print(levels(df$car_value))


# Reread the data, this time also allowing both "NA" and "" (the empty
# string) to be read as NA values.


df <- read.csv("allstate.csv", colClasses = colClasses,
    na.strings = c("NA", ""))


# Examine again the levels of the factor related to car value.


print(levels(df$car_value))


###############################################################################
# Part 4
###############################################################################

# Prepare a summary of the state column using the
# summary(...) command.


print(summary(df$state)) # Using the dollar sign
print(summary(df[, 6]))  # Alternative using numbers


# Prepare a histogram of the cost column. See ?hist for help.


print(hist(df$cost))


# Use plot(...) to plot cost on state.


plot(df$state, df$cost)


###############################################################################
# Part 5
###############################################################################

# Count the number of NAs in the duration_previous column using
# is.na(...).


print(sum(is.na(df$duration_previous)))


# Count the total number of entries in df that are NAs .


print(sum(is.na(df)))


# Now, calculate the pecentage of entries in df that are NAs .


print(100*sum(sum(is.na(df)))/prod(dim(df)))


###############################################################################
# Part 6
###############################################################################

# If times allows, read the SPSS file spss.sav into a data frame using
# the function read.spss in the package foreign.


# install.packages("foreign")
library(foreign)
head(as.data.frame(read.spss("spss.sav")))


# Save your script and close RStudio. (You do not need to upload your
# script.)
