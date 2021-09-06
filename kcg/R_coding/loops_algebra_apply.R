## loops, matrix algebra, and apply

# Problem 1: divide a vector by 2 #########
# create a vector
my_vec = seq.int(from=2,to=12,by=2)
my_vec

# A. use a for loop to divide values by two

# mistakes you can make
# mistake 1
my_vec = seq.int(2,12,by=2)
for (i in my_vec) {
  my_vec[i] = my_vec[i]/2
}
my_vec  # oops! what went wrong?

# mistake 2
for (i in my_vec) {
  my_vec[i] = i/2
}
my_vec  # oops! what went wrong?

# correct 
my_vec = seq.int(2,12,by=2)
for (i in 1:length(my_vec)) {
  my_vec[i] = my_vec[i]/2
}
my_vec

# note: you need to install the foreach package to use a foreach command in R

# B. use matrix algebra
my_vec = seq.int(2,12,by=2)
my_vec = my_vec / 2
my_vec

#####################################
# Problem 2: divide each element of a matrix or df by a scalar

# Option 1: Use a nested for loop
my_df2 = my_df
for (i in nrow(my_df2)) {
  for (j in ncol(my_df2)) {
    my_df2[i,j] = my_df2[i,j]/2
  }
}
my_df2

# use matrix algebra
my_df/2

#######################################
# Problem 3: compute row sums and means of a data frame

# make a simple data frame
my_df = data.frame(x1 = 2,
                   x2 = seq.int(2,12,by=2))

# compute the column and row sums
my_df2 = my_df
apply(my_df2, 2, sum)
apply(my_df2, 1, sum)
my_df2  # did df2 change?

# add a column with row sums
my_df2 = cbind(my_df, row.sums = apply(my_df, 1, sum))
my_df2

# add a column with row means
my_df2$row.means = apply(my_df, 1, mean)
my_df2
