library(tidyverse)
library(nycflights13)

# mutate()

flights_sml <- select(flights, year:day, ends_with("delay"), distance, air_time)

glimpse(flights_sml)

mutate(flights_sml, 
       gain = dep_delay - arr_delay, 
       hours = air_time / 60,
       gain_per_hour = gain / hours)


# transmute
transmute(flights_sml, 
       gain = dep_delay - arr_delay, 
       hours = air_time / 60,
       gain_per_hour = gain / hours)


# Artithmatic: +,-,*,/,^
# Modular: %/%, %% 

transmute(flights,
          dep_time,
          hour = dep_time %/% 100,
          minute = dep_time %% 100)

# logs: log, log2, log10
# offsets: lead, lag
(x <- 1:10)

lag(x)

lead(x)

cumsum(x)

cummean(x)

# logical comparisons: <, <=, >, >=, !=, ==
# Ranking: min_rank
y <- c(1,2,2,NA,3,4)

min_rank(y)

min_rank(desc(y))

# row_number, dense_rank, percent_rank, cum_dist, ntile
?row_number




