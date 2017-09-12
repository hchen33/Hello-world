###############################################################################
# Part 1
###############################################################################

# Load the libraries dplyr and reshape2. If they are not already
# installed, install them first.



# Use read.csv(...) to import the data set mortDefault_sample.csv into
# a data frame df. Make the columns yearsEmploy, year, and default
# factors. Note that "default" is the name of a column, which refers to
# whether a customer defaulted on their mortgage.



# Use the group_by(...) command to group df by yearsEmploy and default.
# Overwrite df with the results.



# Use the summarize(...) command to count the number of records in the
# groups of df. Save the results in a new data frame called summ with a
# column called count.



# Use the dcast(...) command to create a summary table based on summ
# with yearsEmploy as the rows and default as the columns. Overwrite
# summ with the results, and then print summ.



###############################################################################
# Part 2
###############################################################################

# Load the library ggplot2. If it is not already installed, install it
# first. All plots in these exercises should be made with the qplot(...)
# function of ggplot2.



# Plot a histogram of the variable creditScore with bin width 20.



# Make a density plot of ccDebt.



# Make a bar chart of year.



# Make a scatter plot of ccDebt on creditScore. The term ``on''
# indicates that ccDebt should be the y variable.



# Make a heatmap of ccDebt and creditScore.



# Make a contour density plot of ccDebt and creditScore.



# Plot a density plot of creditScore with facets by year.



# Plot a density plot of ccDebt with fill by default. Also set the
# transparency to 40%.



# Plot boxplots of ccDebt on yearsEmploy.



# Graph violin plots of ccDebt on year.



# Make a bar chart of year with fill by default.



# Make a heatmap of year and default.



# Make a jitter plot of ccDebt on yearsEmploy with color by default.



# Repeat the previous exercise with facets by default. Be sure to keep
# the color by the variable default as well.



# Repeat the previous, but this time add a facet by year.


