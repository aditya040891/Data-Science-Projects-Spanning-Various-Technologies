library(nycflights13)
library(tidyverse)

arrange(flights, year, month, day)

arrange(flights, desc(dep_delay))

## Missing values
df <- tibble(x = c(10, 5, NA))

df

arrange(df, x)

arrange(df, desc(x))

# SELECT
select(flights, year, month, day)

select(flights, year:day)

select(flights, -(year:day))

names(flights)

select(flights, starts_with('dep'))

select(flights, ends_with("delay"))

select(flights, contains("a"))

rename(flights, tail_num = tailnum)

flights

select(flights, time_hour, hour, minute, everything())














