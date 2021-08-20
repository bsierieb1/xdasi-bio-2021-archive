# ============================================================================ #
# Prepare the data
# ============================================================================ #

# 0) The table we made in the last exercise has been imported into the workspace here.
#    Take a look at the "data/tigers.table.csv" file to understand how it is formatted.
#    You can do this either by opening the file using the GUI or 
#    on the commandline by opening a Terminal and typing `head data/Ex2.2A_tigers.csv`.

# 1a) We could load this table, but it's just as easy to remake it from the original data file.
#     Use the `read.csv()` command to load the "data/Ex2.2A_tigers.csv" data file again.
#     Add column names ("Frequency" and "Activity"), and make strings into factors.
tigers.df = read.csv("___",
                     col.names = ___, 
                     ___ = TRUE)

# 1b) Now remake the table and turn it into a data frame.
#     Instead of doing this in multiple steps like we did in the last exercise 
#       (Table1.1-1_tigers.R), we do this now in one line!
#     Tips:
#     -- Remember that `table()` wants a vector as input -- this is the column 
#        containing the data you want to group by. Here, that's the "Activity" column.
#     -- We need to first make the table, then sort it, then turn it into a data frame.
#        This involves sequential operations like (cmd3(cmd2(cmd1(data, params)))).
#     -- While we are at it, let's make "Activity" into factors at the same time.
tigers.table.df = as.data.frame(___(___(tigers.df$Activity), # sorted table
                                     ___=TRUE)) # add factors

# 1c) Examine the structure of the data frame and take a peek at it
___(tigers.table.df) # structure
___(tigers.table.df) # contents

# 1d) I don't like these column headers.
#     Let's change them to "Activity" and "Frequency" like we did before.
___(tigers.table.df) = ___

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
#bar.colors = c(rep("firebrick",length(tigers.table.df$Frequency)))
bar.colors = c(___("firebrick",___(tigers.table.df))) # repeat, no. of rows 

# 4) Now draw the bar chart

# Notes:
#  * we need increase bottom margin for the figure to print all the names
#  * we set the bar colors and limits of the y-axis manually
#  * we do not label the x-axis right away
#  * we use the `text()` command to properly format the bar labels
#  * and the `mtext()` command to add the x-axis label
#  * after we are done, we reset par() to its defaults (changes are persistent)

par(mar=c(7, 4.1, 4.1, 2.1)) # default is par(mar=c(5.1, 4.1, 4.1, 2.1))
my.barplot = barplot(tigers.table.df$___,  # vector of counts
                     col = ___,           # color vector for the bars (from above),
                     ylim = c(___,___),             # limits for y-axis (use values from the figure)
                     xpd = FALSE)                # don't label the x-axis

# the next line sets the text at a 45 degree angle and positions it relative to the x-axis
# enter the factors vector here
text(x=my.barplot+0.25, y=-2, tigers.table.df$___, srt=45, xpd=TRUE, pos=2)

# this sets the text and position for the axis labels
# enter the axis labels from the figure
# Arguments: text, bold font, side (1=x-axis,2=y-axis), position
mtext ("___", font=2, side=1, line=5.5) # x-axis
mtext ("___", font=2, side=2, line=2.5) # y-axis

# reset par to defaults
par()

# ============================================================================ #
# Make the bar chart with ggplot!
# ============================================================================ #

# 5) That seems like it was a lot of work, and very tediouw.
#    This does the same thing, but it's a lot cleaner:
library(ggplot2)
ggplot(data = tigers.table.df, aes(x = Activity, y=Frequency)) +
  geom_bar(stat = "identity", fill = "firebrick") +
  labs(x = "Activity", y = "Frequency (number of people)") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylim(c(0,50))
