library(nycflights13)
library(tidyverse)

summarize(flights, 
          delay = mean(dep_delay, na.rm = TRUE))

by_day <- group_by(flights, year, month, day)

summarize(by_day,
          delay = mean(dep_delay, na.rm = TRUE))


# Without pipe
by_dest <- group_by(flights, dest)

delay <- summarize(by_dest, 
                   count = n(),
                   avg_dist = mean(distance, na.rm=TRUE),
                   avg_arr_delay = mean(arr_delay, na.rm=TRUE))


delay <- filter(delay, count > 20, dest != "HNL")
  
ggplot(data = delay, mapping = aes(x = avg_dist, y = avg_arr_delay)) +
  geom_point(aes(size = count), alpha = 1/3) +
  geom_smooth(se = FALSE)


# Three preparation steps:
# 1. Group By
# 2. Summarized (aggregation)
# 3. Filtered


# Pipe %>%
delays <- flights %>% group_by(dest) %>% summarise(
  count = n(),
  dist = mean(distance, na.rm=TRUE),
  delay = mean(arr_delay, na.rm=TRUE)
) %>% 
  filter(count > 20, dest != "HNL")


?group_by()

# flights %>% group_by(dest) %>% summarize()

# ggplot(data = delay, mapping = aes(x = avg_dist, y = avg_arr_delay))

# Missing values; na.rm
flights %>% group_by(year, month, day) %>% summarize(avg = mean(dep_delay, na.rm = TRUE))

not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))


not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarize(avg = mean(dep_delay))


# Counts 
# n()
# sum(!is.na())

delays <- not_cancelled %>% group_by(tailnum) %>% summarize(
  delay = mean(arr_delay)
)

ggplot(data = delays, mapping = aes(x = delay)) +
  geom_freqpoly(binwidth = 10)


delays <- not_cancelled %>% group_by(tailnum) %>% summarize(
  delay = mean(arr_delay, na.rm = TRUE),
  n = n()
)


ggplot(data = delays, mapping = aes(x = n, y = delay)) + 
  geom_point(alpha=1/10)


delays %>% filter(n > 25) %>% ggplot(mapping = aes(x = n, y = delay)) +
  geom_point(alpha = 1/10)




