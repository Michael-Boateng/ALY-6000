# Michael Boateng, 2023 September 19, ALY 6000

cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) #
clears packages
options(scipen = 100) # disables scientific notation for entire R
session

install.packages("pacman")

library(pacman)
p_load(testthat)
test_file("project1_tests.R")

123*453

5^2 * 40

TRUE & FALSE

TRUE | FALSE

75 %% 10

75 / 10

first_vector <- c(17, 12, -33, 5)

counting_by_fives <- c(5, 10, 15, 20, 25, 30, 35)

second_vector <- seq(10, 30, by = 2)

counting_by_fives_with_seq <- seq(5, 35, by = 5)

third_vector <- rep(first_vector, times = 10)

rep_vector <- rep(0, times = 20)

fourth_vector <- c(10:1)

counting_vector <- c(5:15)

grades <- c(96, 100, 85, 92, 81, 72)

bonus_points_added <- c(grades + 3)

one_to_one_hundred <- c(1:100)

reverse_numbers <- seq(from = 100, to = -100, by = -3)

# 20 is added to each number in the second vector 
second_vector + 20

# Each number in the second vector is multiplied by 20
second_vector * 20

# A true or false is generated if the second vector is greater or equal to 20
second_vector >= 20

# A true or false response is generated if the second vector is not equal to 20
second_vector != 20

total <- sum(one_to_one_hundred)

average_value <- mean(one_to_one_hundred)

median_value <- median(one_to_one_hundred)

max_value <- max(one_to_one_hundred)

min_value <- min(one_to_one_hundred)

first_value <- second_vector [1]

first_three_values <- second_vector [1:3]
first_three_values <- second_vector[c(1:3)]

second_vector [c(1, 5, 10, 11)]

# It extracts from the vector the numbers that align to 'TRUE' in the cod
vector_from_boolean_brackets <- first_vector [c(FALSE, TRUE, FALSE, TRUE)]

# Vector numbers >= 20 are 'TRUE' whereas numbers < 20 are 'FALSE'
second_vector >= 20

# create a vector from 10 to 30 by 2s and store the result in a variable called ages_vector
ages_vector <- seq(from = 10, to = 30, by = 2)

lowest_grades_removed <- grades [grades >=85]

middle_grades_removed <- grades [c(-3, -4)]

fifth_vector <- second_vector [c(-5, -10)]

# Generate the same set of random numbers every time the code is run 
set.seed(5)
random_vector <- runif(n=10, min = 0, max = 1000)

sum_vector <- sum(random_vector)

cumsum_vector <- cumsum(random_vector)

mean_vector <- mean(random_vector)

sd_vector <- sd(random_vector)

round_vector <- round(random_vector)

sort_vector <- sort(random_vector)

#Generate a random sample size of 1000 from a normal distribution with a mean of 50 and a standard deviation of 15
random_vector <- rnorm(n=1000, mean = 50, sd = 15)

#Used to chart a histogram which depicts the frequency of the 1000 numbers in the random vector. Numbers between 40 and 60 have the highest frequency
hist(random_vector)

first_dataframe <- read.csv("ds_salaries.csv")

#The table has been displayed according to various classifications
head(first_dataframe)

# The details under the various classifications constitute 7 rows
head(first_dataframe, n = 7)

# The names of the classifications have been captured only
names(first_dataframe)

# Provides a count of the data in terms of job_title and salary_in_usd
smaller_dataframe <- select(first_dataframe, job_title, salary_in_usd)

# Provides the details of the smaller data in terms of job_title and salary_in_usd
smaller_dataframe

# provides a count and sets up the the data in terms of "salary_in_usd"
better_smaller_dataframe <- arrange(smaller_dataframe, desc(salary_in_usd))

# provides the details of the data in descending order using salary_in_usd as the basis
better_smaller_dataframe

# provides a count and sets up the the data in terms of "salary_in_usd > 80000"
better_smaller_dataframe <- filter(smaller_dataframe, salary_in_usd > 80000)

# provides the details of the data in terms of "salary_in_usd > 80000' 
better_smaller_dataframe

# provides the data count of data of salary_in_usd converted to euros at the rate of .94 
better_smaller_dataframe <- mutate(smaller_dataframe, salary_in_euros = salary_in_usd * .94)

# Provides the details of the conversion of salary to euros
better_smaller_dataframe

# provides the data count of the list identified
better_smaller_dataframe <- slice(smaller_dataframe, 1, 1, 2, 3, 4, 10, 1)

#extracts the data for rows 1, 2, 3, 4, 10 and presents them in the order in which it was requested
better_smaller_dataframe

#
ggplot(better_smaller_dataframe)

