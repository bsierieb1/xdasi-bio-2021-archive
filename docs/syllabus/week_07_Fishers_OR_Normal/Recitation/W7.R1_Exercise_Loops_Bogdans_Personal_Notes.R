############# sum

my_df <- data.frame("number_1" = c(1,2,3,4,5),
                  "number_2" = c(10,20,30,40,50),
                  "sum" = NA)
my_df

# 1st iteration
my_df[1,3] <- my_df[1,1] + my_df[1,2]
my_df

# 2nd iteration
my_df[2,3] <- my_df[2,1] + my_df[2,2]
my_df

# what is different? replace row number with i and rewrite

my_df <- data.frame("number_1" = c(1,2,3,4,5),
                  "number_2" = c(10,20,30,40,50),
                  "sum" = NA)

# 1st iteration
row <- 1
my_df[row,3] <- my_df[row,1] + my_df[row,2]
my_df

# 2nd iteration
row <- 2
my_df[row,3] <- my_df[row,1] + my_df[row,2]
my_df

# TO WRITE A LOOP, YOU NEED TO FIND A WAY TO ONLY CHANGE 1 THING IN EACH ITERATION

# place inside the loop

my_df <- data.frame("number_1" = c(1,2,3,4,5),
                  "number_2" = c(10,20,30,40,50),
                  "sum" = NA)

for (row in 1:5) {
  my_df[row,3] <- my_df[row,1] + my_df[row,2]
}
my_df

# generalize

my_df <- data.frame("number_1" = c(1,2,3,4,5),
                  "number_2" = c(10,20,30,40,50),
                  "sum" = NA)

for (row in 1:nrow(my_df)) {
  my_df[row,3] <- my_df[row,1] + my_df[row,2]
}
my_df

############# cumsum - without intermediate steps

my_df <- data.frame("number_1" = c(1,2,3,4,5),
                  "number_2" = c(10,20,30,40,50),
                  "sum" = NA)

my_df[1,3] <- my_df[1,1] + my_df[1,2]
for (row in 2:nrow(my_df)) {
  my_df[row,3] <- my_df[row,1] + my_df[row,2] + my_df[row-1,3]
}
my_df

############# something for which no pre-defined function exists
# draw number_2 numbers from a standard normal distribution with mean = number_1,
# calculate how much distribution mean deviates from number_1

set.seed(1)

my_df <- data.frame("number_1" = c(1,2,3,4,5),
                    "number_2" = c(10,20,30,40,50),
                    "custom" = NA)

for (row in 1:nrow(my_df)) {
  my_df[row,3] <- mean(rnorm(n = my_df[row,2],
                             mean = my_df[row,1])) - my_df[row,1]
}
my_df

############# the same with apply

set.seed(1)

my_df <- data.frame("number_1" = c(1,2,3,4,5),
                    "number_2" = c(10,20,30,40,50),
                    "custom" = NA)

apply(my_df,
      MARGIN = 1,
      FUN = function(row_i) mean(rnorm(n = row_i[2], mean = row_i[1])) - row_i[1])


