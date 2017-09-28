###############################################################################
# Part 1
###############################################################################

# Load the libraries dplyr and reshape2. If they are not already
# installed, install them first.


library(dplyr)
library(reshape2)


# Use read.csv(...) to import the data set mortDefault_sample.csv into
# a data frame df. Make the columns yearsEmploy, year, and default
# factors. Note that "default" is the name of a column, which refers to
# whether a customer defaulted on their mortgage.


df <- read.csv("mortDefault_sample.csv")
df$yearsEmploy <- factor(df$yearsEmploy)
df$year <- factor(df$year)
df$default <- factor(df$default)


# Use the group_by(...) command to group df by yearsEmploy and default.
# Overwrite df with the results.


df <- group_by(df, yearsEmploy, default)


# Use the summarize(...) command to count the number of records in the
# groups of df. Save the results in a new data frame called summ with a
# column called count.


summ <- summarize(df, count = n())


# Use the dcast(...) command to create a summary table based on summ
# with yearsEmploy as the rows and default as the columns. Overwrite
# summ with the results, and then print summ.


summ <- dcast(summ, yearsEmploy ~ default, value.var = "count")
print(summ)


###############################################################################
# Part 2
###############################################################################

# Load the library ggplot2. If it is not already installed, install it
# first. All plots in these exercises should be made with the qplot(...)
# function of ggplot2.


library(ggplot2)


# Plot a histogram of the variable creditScore with bin width 20.


qplot(creditScore, data = df, geom = "histogram", binwidth = 20)


# Make a density plot of ccDebt.


qplot(ccDebt, data = df, geom = "density")


# Make a bar chart of year.


qplot(year, data = df, geom = "bar")


# Make a scatter plot of ccDebt on creditScore. The term ``on''
# indicates that ccDebt should be the y variable.


qplot(creditScore, ccDebt, data = df, geom = "point")


# Make a heatmap of ccDebt and creditScore.


qplot(creditScore, ccDebt, data = df, geom = "bin2d")


# Make a contour density plot of ccDebt and creditScore.


qplot(creditScore, ccDebt, data = df, geom = "density2d")


# Plot a density plot of creditScore with facets by year.


qplot(creditScore, data = df, geom = "density", facets = . ~ year)


# Plot a density plot of ccDebt with fill by default. Also set the
# transparency to 40%.


qplot(ccDebt, data = df, geom = "density", fill = default, alpha = I(0.4))


# Plot boxplots of ccDebt on yearsEmploy.


qplot(yearsEmploy, ccDebt, data = df, geom = "boxplot")


# Graph violin plots of ccDebt on year.


qplot(year, ccDebt, data = df, geom = "violin")


# Make a bar chart of year with fill by default.


qplot(year, data = df, geom = "bar", fill = default)


# Make a heatmap of year and default.


qplot(year, default, data = df, geom = "bin2d")


# Make a jitter plot of ccDebt on yearsEmploy with color by default.


qplot(yearsEmploy, ccDebt, data = df, geom = "jitter", color = default)


# Repeat the previous exercise with facets by default. Be sure to keep
# the color by the variable default as well.


qplot(yearsEmploy, ccDebt, data = df, geom = "jitter", color = default,
      facets = default ~ .)


# Repeat the previous, but this time add a facet by year.


qplot(yearsEmploy, ccDebt, data = df, geom = "jitter", color = default,
      facets = default ~ year)

