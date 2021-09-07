library(dplyr)
library(ggplot2)
# ============================================================================ #
# Prepare the data
# ============================================================================ #

# 0) The table we made in the last exercise has been imported into the workspace here.
#    Take a look at the "data/tigers.table.csv" file to understand how it is formatted.
#    You can do this either by opening the file using the GUI or 
#    on the commandline by opening a Terminal and typing `head data/Ex2.2A_tigers.csv`.

# 1a) We could load this table, but it's just as easy to remake it from the original data file.
#     Use the `read.csv()` command to load the "data/Ex2.2A_tigers.csv" data file again.
#     Add column names ("Person" and "Activity").
tigers.df = read.csv("data/Ex2.2A_tigers.csv",
                     col.names = c("Person","Activity"))

# 1b) Now remake the table and turn it into a data frame. Use pipes to do this
#       all at once like we did in the last exercise (Table1.1-1_tigers.R).
#     Then reset the column names to "Activity" and "Frequency".
tigers.table.df = table(tigers.df$Activity) %>% sort(decreasing=TRUE) %>%
  as.data.frame()
colnames(tigers.table.df) = c("Activity","Frequency")

# 1c) In the last exercise, we also saw how we could do this using pipes.
#     A different way to do this with dplyr is to use the `group_by()` command, followed by
#       the `tally()` command. This allows us to set the new column name at the same time.
#     Below, use `group_by()` and then `tally()` to make the frequency table.
#     For some reason, `sort=TRUE` sorts in descending order. If you want it sorted
#       differently, you'd have to do this in a separate step.
tigers.table.df = tigers.df %>% group_by(Activity) %>% tally(name="Frequency",sort=TRUE)

# 1d) Examine the structure of the data frame and take a peek at it. Notice that our
#     frequency table is now transposed, allowing us to plot the counts by category.
#     Also, it's a tibble not a data frame if we do this with dplyr. No biggie.
str(tigers.table.df) # structure
head(tigers.table.df) # contents

# ============================================================================ #
# Make the bar chart
# ============================================================================ #

# 2) Simple barplot: just plot the data in the "Frequency" column
#    This automatically draws a bar for each row in the data frame
barplot(tigers.table.df$Frequency)

# Well that worked, but it wasn't very gratifying! We have no idea what is what.

# 3) First, let's set the color of the bars in the chart. To do this, first create a 
#     vector containing the word "firebrick", repeated as many times as
#     there are rows in the `tigers.table.df` data frame
# could use length of Frequency column, or ...
#bar.colors = c(rep("firebrick",length(tigers.table.df$Frequency)))
# use number of rows in the data frame:
bar.colors = c(rep("firebrick",nrow(tigers.table.df))) # repeat, no. of rows

# 4) Now draw the bar chart

# Notes:
#  * we need increase bottom margin for the figure to print all the names
#  * we set the bar colors and limits of the y-axis manually
#  * we do not label the x-axis right away
#  * we use the `text()` command to properly format the bar labels
#  * and the `mtext()` command to add the x-axis label
#  * after we are done, we reset par() to its defaults (changes are persistent)

par(mar=c(7, 4.1, 4.1, 2.1)) # default is par(mar=c(5.1, 4.1, 4.1, 2.1))
my.barplot = barplot(tigers.table.df$Frequency,  # vector of counts
                     col = bar.colors,           # color for the bars (from above),
                     ylim = c(0,50),             # limits for y-axis (use values from the figure)
                     xpd = FALSE)                # don't label the x-axis

# the next line sets the text at a 45 degree angle and positions it relative to the x-axis
# enter the factors vector here
text(x=my.barplot+0.25, y=-2, tigers.table.df$Activity, srt=45, xpd=TRUE, pos=2)

# this sets the text and position for the axis labels
# enter the axis labels from the figure
# Arguments: text, bold font, side (1=x-axis,2=y-axis), position
mtext ("Activity", font=2, side=1, line=5.5)
mtext ("Frequency (number of people)", font=2, side=2, line=2.5)

# reset par to defaults
par(mar=c(5.1, 4.1, 4.1, 2.1))

# ============================================================================ #
# Make the bar chart with ggplot!
# ============================================================================ #

# 5) That seems like it was a lot of work, and very tedious. It's a lot cleaner with ggplot.
#    Below, we remake the plot using the new tigers.table.df.

# By default, ggplot likes to display categories in alphabetical order. To reorder
# the columns based on Frequency, you can use the reorder function.
# The minus sign in front of Frequency indicates to use descending order.

ggplot(data = tigers.table.df, aes(x = reorder(Activity, -Frequency), y=Frequency)) +
  geom_bar(stat = "identity", fill = "firebrick") +
  labs(x = "Activity", y = "Frequency (number of people)") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylim(c(0,50))

# ============================================================================ #
# With the first method we used to sort the data frame, we don't need to relevel,
#   since factors are automatically created in the right order.

# Note: since the default behavior for `stringsAsFactors` is different in different
#   versions of R, we just set `stringsAsFactors = TRUE` explicitly below:

tigers.table.df = table(tigers.df$Activity) %>% sort(decreasing=TRUE) %>%
  as.data.frame(stringsAsFactors = TRUE)
colnames(tigers.table.df) = c("Activity","Frequency")

# ========================================================================== ##
# Having used the `tally()` function, we could make and relevel the factors as
# follows, then call ggplot without the reordering:

# add factors in the correct order for the tally command
tigers.table.df = tigers.table.df %>%
  mutate(Activity=factor(Activity, levels=Activity))

# ========================================================================== ##
# Now this works just fine!
ggplot(data = tigers.table.df, aes(x = Activity, y=Frequency)) +
  geom_bar(stat = "identity", fill = "firebrick") +
  labs(x = "Activity", y = "Frequency (number of people)") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylim(c(0,50))

# ========================================================================== ##

