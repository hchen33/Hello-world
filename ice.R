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



# Use the View(df) from the console to get a spreadsheet-like view of the
# data frame.

# Examine the structure of df using str(...).



# Examine the column names of df. Also look at the number of columns.



# Examine the number of rows of df.



# Calculate the total memory used by df in megabytes.



###############################################################################
# Part 2
###############################################################################

# Examine the seventh entry of the third column of df.



# Use the : symbol to select rows 7 to 11 and columns 3 to 5.



# Now use the c(...) command to select rows 7 and 11 (not "7 to 11") and
# columns state and cost.



###############################################################################
# Part 3
###############################################################################

# Reread the data into df using the following definition of colClasses:

colClasses <- c("character", "character", "factor", "factor",
    "character", "factor", "character", "integer", "factor", "integer",
    "factor", "factor", "integer", "integer", "factor", "factor",
    "integer", "factor", "factor", "factor", "factor", "factor",
    "factor", "factor", "integer")



# Rexamine the structure of df and note the changes compared to before.



# Examine the levels of the factor related to car value.



# Reread the data, this time also allowing both "NA" and "" (the empty
# string) to be read as NA values.



# Examine again the levels of the factor related to car value.



###############################################################################
# Part 4
###############################################################################

# Prepare a summary of the state column using the
# summary(...) command.



# Prepare a histogram of the cost column. See ?hist for help.



# Use plot(...) to plot cost on state.



###############################################################################
# Part 5
###############################################################################

# Count the number of NAs in the duration_previous column using
# is.na(...).



# Count the total number of entries in df that are NAs .



# Now, calculate the pecentage of entries in df that are NAs .



###############################################################################
# Part 6
###############################################################################

# If times allows, read the SPSS file spss.sav into a data frame using
# the function read.spss in the package foreign.



# Save your script and close RStudio. (You do not need to upload your
# script.)
