# INSTRUCTIONS:
# * Read through the exercise and replace the blank spaces (___) with the
#   appropriate commands or text.

library(tidyr)
# ============================================================================ #
# Prepare the data
# ============================================================================ #

# 0) Take a look at the "data/Ex2.2A_tigers.csv" file to see how it is formatted.
#    You can do this by opening the file in the `data` directory using the GUI; 
#    or, open a Terminal and type `head data/Ex2.2A_tigers.csv` on the commandline.

# 1)  Load the data in the .csv file into a data frame using the `read.csv()` command.

# 1a) First, look up the `read.csv()` command to learn about the syntax here:
#     https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/write.table

# 1b) Now load the data file. Remember that it is inside a data directory called `data`.
#     We will often organize our data this way, which will be helpful later
#       when you will be working with more data files.
tigers.df = read.csv("data/Ex2.2A_tigers.csv") # data file

# 2a) Examine the data frame using the `str()` command
str(tigers.df)

# 2b) Look at the first 6 lines of the file using the `head()` command
head(tigers.df)

# Note: you should make a habit of checking your data structures regularly!

# ============================================================================ #
# Make the table
# ============================================================================ #

# 3) Transform the data to a frequency table using the `table()` command
#    First, look up the command here:
#    https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/table
tigers.table = table(tigers.df$activity) # specify the column containing the factors for grouping

# 4) Sort the table in descending order
tigers.table = sort(tigers.table,decreasing=TRUE)

# 5) Make the table into a data frame
tigers.table.df = as.data.frame(tigers.table)

# 6) Compare the table to the new data frame -- what's different about these?
str(tigers.table)
tigers.table

str(tigers.table.df)
tigers.table.df

# Question: Why did we make a data frame from the table in the first place?
# Answer: A data frame is easier to work with downstream, and we end up with a
#   data structure where each row is an item and each column is a different type of data.
#   This is called "tidy data" and is always a good starting point for operating on data.

# ============================================================================ #
# Make the table more efficiently
# ============================================================================ #

# 7) Alternatively, we can do all of this a single command and avoid
#    cluttering up our environment with a temporary data structure.

# 7a) Let's get rid of the two data structures we just made to make sure we get it right.
rm(tigers.table)
rm(tigers.table.df)

# 7b) Now recreate the table data frame in one go! 
#      We do this by wrapping a command inside another command:
#        * first, make a table, then sort the table in descending order,
#        * then convert it to a data frame
tigers.table.df = as.data.frame(sort(table(tigers.df$activity),decreasing=TRUE))

# 7c) You could do this instead using pipes (from tidyverse). Conceptually,
#       this seems a lot more straightforward. Note that you do NOT
#       have to specify the variable you are operating on after piping.
tigers.table.df = table(tigers.df$activity) %>% sort(decreasing=TRUE) %>%
  as.data.frame()
  
# 7d) Take a look at the new data frame
tigers.table.df

# 7e) Change the column names to "Activity" and "Frequency" using `colnames()`
#     and take a look at the new data frame
colnames(tigers.table.df) = c("Activity","Frequency")
tigers.table.df # how many rows are there now?

# ============================================================================ #
# Write the frequency table to a file
# ============================================================================ #

# 8) Write the data frame to a `.csv` file inside the `data` folder.

# 8a) First, look up the `write.table()` command here:
#      https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/write.table
#      What is the difference between this command and the alternative `write.csv()` syntax?

# 8b) Now write the output file, making sure to use commas as the field separators.
#      Here we will do this using the `write.table()` command.
write.table(tigers.table.df, # the data frame
            "data/tigers.table.csv", # the output file
            sep = ",", # use a comma as the field separator
            row.names=FALSE) # do not include the row names in the output file (boolean flag)
                             # (notice that the row names are actually integers)

# 8c) Look for the output file in the "data/" directory. Is it there?
#     If you did this using the "Run" button, you won't see the file there.
#     This seems a bit annoying to us, but apparently everything spins up a new VM by design.
#     If you run the program using the Terminal by typing `Rscript Table2.2-1.R`,
#       now you will see the file in the `data` directory.

# ============================================================================ #
# END
# ============================================================================ #