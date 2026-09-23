library(tidyverse)

outliers

diamonds2 <- diamonds %>% filter(between(y, 3, 20))

# RECOMMEND: DON'T DO THIS

diamonds2 <- diamonds %>% mutate(y = ifelse((y < 3 | y > 20), NA, y))

diamonds2 <- diamonds %>% mutate(y = ifelse((y<3 | y>20), NA, y))                                 

?ifelse()

?case_when()

ggplot(data=diamonds2, mapping=aes(x=x, y=y)) +
  geom_point()
  
ggplot(data=diamonds2, mapping=aes(x=x, y=y)) +
  geom_point(na.rm=TRUE)

glimpse(nycflights13::flights)

nycflights13::flights %>% 
  mutate(cancelled=is.na(dep_time), 
         sched_hour = sched_dep_time %/% 100, 
         sched_min = sched_dep_time %% 100, 
         sched_dep_time = sched_hour + sched_min / 60) %>%
  ggplot(mapping=aes(sched_dep_time)) +
  geom_freqpoly(mapping=aes(color=cancelled),
                binwidth=1/4)



  
  
  