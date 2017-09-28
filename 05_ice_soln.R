###############################################################################
# Part 1
###############################################################################

# Run the following commands to load the library ggplot2 and import the
# data set mortDefault_sample.csv into a data frame df. (Notice that
# "default" is the name of a column relating to a mortgage default.)

library(ggplot2)
df <- read.csv("mortDefault_sample.csv")
df$yearsEmploy <- factor(df$yearsEmploy)
df$year <- factor(df$year)
df$default <- factor(df$default)

# Starting from the command
# 
#     qplot(creditScore, data = df, geom = "histogram", binwidth = 20)
#
# incorporate the option fill = I("blue") to color the bars blue. Also
# make the plot title "Histogram of Credit Score", the x-axis title
# "Credit Score", and the y-axis title "Frequency".


p <- qplot(creditScore, data = df, geom = "histogram", binwidth = 20,
    fill = I("blue"))
p <- p + ggtitle("Histogram of Credit Score")
p <- p + scale_x_continuous(name = "Credit Score")
p <- p + scale_y_continuous(name = "Frequency")
print(p)


# Starting from the command
#
#     qplot(ccDebt, data = df, geom = "density")
# 
# incorporate the fill and alpha options to color the graphic dark green
# with 75% transparency; use I("darkgreen") and I(0.75). Also alter the
# x-axis labels to be formatted as dollars, which needs library(scales),
# and to have the limits -20000 to 20000.


library(scales)
p <- qplot(ccDebt, data = df, geom = "density", fill = I("darkgreen"),
    alpha = I(0.75))
p <- p + scale_x_continuous(labels = dollar, limits = c(-20000, 20000))
print(p)


###############################################################################
# Part 2 
###############################################################################

# Starting from the command:
# 
#     qplot(year, data = df, geom = "bar", fill = year)
#
# use scale_fill_brewer(palette = "Paired") to alter the color palette.
# Also remove the legend.


p <- qplot(year, data = df, geom = "bar", fill = year)
p <- p + scale_fill_brewer(palette = "Paired")
p <- p + theme(legend.position = "none")
print(p)


# Starting from the command
# 
#     qplot(creditScore, ccDebt, data = df, geom = "point", color = default)
#
# make the palette associated with the color scale use the Brewer
# palette "Accent". Also put the legend on top.


p <- qplot(creditScore, ccDebt, data = df, geom = "point", color = default)
p <- p + scale_color_brewer(palette = "Accent")
p <- p + theme(legend.position = "top")
print(p)


# Starting from the command
# 
#     qplot(creditScore, ccDebt, data = df, geom = "bin2d")
# 
# use scale_fill_gradient(...) to change "count" to "Heat" and to make
# the low color "orange" and the high color "yellow". Also remove the
# panel grid and the panel background.


p <- qplot(creditScore, ccDebt, data = df, geom = "bin2d")
p <- p + scale_fill_gradient(name = "Heat", low = "orange", high = "yellow")
p <- p + theme(panel.grid = element_blank())
p <- p + theme(panel.background = element_blank())
print(p)


###############################################################################
# Part 3
###############################################################################

# Extend the command
# 
#     qplot(yearsEmploy, ccDebt, data = df, geom = "jitter", color = default,
#         facets = default ~ year)
#
# to do the following:
#
#    name the y$axis "Credit Card Debt" and label it with dollars;
#
#    name the x-axis "Years Employed" and use breaks 5*(0:3); in this
#    case, you will have to use the command scale_x_discrete;
#
#    change "default" to "Default;
#
#    use theme(text = element_text(size = 12)) to change the base font
#    for the graphic to 12-point;
#
#    rotate the y-axis text labels by 45 degrees;
#
#    remove the minor grid on the panel;
#
# Also make sure the plot is saved in a variable p.


p <- qplot(yearsEmploy, ccDebt, data = df, geom = "jitter", color = default,
      facets = default ~ year)
p <- p + scale_y_continuous(name = "Credit Card Debt", labels = dollar)
p <- p + scale_x_discrete(name = "Years Employed", breaks = 5*(0:3))
p <- p + scale_color_hue(name = "Default")
p <- p + theme(text = element_text(size = 12))
p <- p + theme(axis.text.y = element_text(angle = 45))
p <- p + theme(panel.grid.minor = element_blank())
print(p)


# Save the previous graphic p to a PDF file named "graphic.pdf" with
# width 6 inches and height 4 inches.


ggsave(filename = "graphic.pdf", plot = p, width = 6, height = 4, units = "in")

