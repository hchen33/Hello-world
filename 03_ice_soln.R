###############################################################################
# Part 0
###############################################################################

# Set the working directory to be the "ice" subfolder containing this
# file. Do not save the setwd(...) command in this script.

###############################################################################
# Part 1
###############################################################################

# Use read.csv(...) to import UFO_2015_01.csv with stringsAsFactors =
# FALSE and na.strings = c("NA", "Unknown", "Other", ""). Save it in a
# data frame called df.


df <- read.csv("UFO_2015_01.csv", stringsAsFactors = FALSE, na.strings =
    c("NA", "Unknown", "Other", ""))


# Remove the columns Posted and Summary.


df$Posted <- NULL
df$Summary <- NULL


# You should have a column called Date...Time. Change the name to
# DateTime.


names(df)[names(df) == "Date...Time"] <- "DateTime"


# Change State and Shape to factors.


df$State <- as.factor(df$State)
df$Shape <- as.factor(df$Shape)


# Use 
# 
#     as.POSIXct(df$DateTime, "%m/%d/%y %H:%M", tz = "America/Chicago")
# 
# to overwrite df$DateTime as a true date-time object.


df$DateTime <- as.POSIXct(df$DateTime, "%m/%d/%y %H:%M", tz = "America/Chicago")


###############################################################################
# Part 2 
###############################################################################

# Suppose you prefer the spelling "disc" over "disk", which currently
# exists in the data.

# (a) Use the == comparison to create a logical vector that shows
# which levels in levels(df$Shape) equal "Disk". Store the result in a
# variable called wh.


wh <- levels(df$Shape) == "Disk"


# (b) Use the gets operator <- in conjunction with levels(df) and wh to
# change Disk to Disc.


levels(df$Shape)[wh] <- "Disc"


# Challenge: How can parts (a) and (b) can be combined into a single
# command?


# levels(df$Shape)[levels(df$Shape) == "Disk"] <- "Disc"


# Now do something similar to group "Cigar" with "Cylinder" and "Egg"
# with "Oval".


levels(df$Shape)[levels(df$Shape) == "Cigar"] <- "Cylinder"
levels(df$Shape)[levels(df$Shape) == "Egg"] <- "Oval"


###############################################################################
# Part 3 
###############################################################################

# To prepare for the next steps below, which are based on searching the
# text in df, convert Duration to lower case.


df$Duration <- tolower(df$Duration)


# Use the command
#
#     df$Minutes <- grepl("min", df$Duration)
#
# to add a new column, which specifies whether or the not the duration
# of the UFO event was measured in minutes (as opposed to seconds or
# hours). We will learn more about the grepl command later.


df$Minutes <- grepl("min", df$Duration)


# Delete the Duration column.


df$Duration <- NULL


###############################################################################
# Part 4
###############################################################################

# Use the subset(...) command to reduce df to only those rows where
# DateTime is not "2015-01-01". To do this correctly, you will have to
# coerce DateTime to the Date class using the as.Date(...) function with
# timezone "America/Chicago".


df <- subset(df, as.Date(df$DateTime, tz = "America/Chicago") != "2015-01-01")


# Use complete.cases(...) to reduce df to only those rows with no NAs.


df <- df[complete.cases(df), ]


# Write df to the file UFO_2015_01_cleaned.csv without row names.


write.csv(df, file = "UFO_2015_01_cleaned.csv", row.names = FALSE)


# Save your script and close RStudio. (You do not need to upload your
# script.)
