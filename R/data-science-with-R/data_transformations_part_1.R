library(nycflights13)
library(tidyverse)

glimpse(flights)

?flights

flights

?dplyr

filter(flights, month == 1, day == 10)

jan1 <- filter(flights, month==1, day==1)

View(jan1)


(aug8 <- filter(flights, month==8, day==8))

filter(flights, month==1)

sqrt(2) ^ 2

sqrt(2) ^ 2 == 2

near(sqrt(2) ^ 2, 2)

filter(flights, month==10 | month==11)

filter(flights, month %in% c(10,11))

# Find flights that were not delayed by more than 2 hours.

filter(flights, !(arr_delay > 120 | dep_delay > 120))

filter(flights, arr_delay <= 120 | dep_delay <= 120)

# Missing values, NA

NA > 5

NA == 5

NA + 100

NA == NA

# x be my weight, y be my wife's weight
x <- 90
y <- 40
x > y
y > x

x <- NA
y <- NA
x == y

is.na(x)
 
x <- 0
is.na(x)

df <- tibble(x = c(100, NA, 300))

df

filter(df, x > 200)

filter(df, x > 90)






