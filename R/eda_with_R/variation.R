# Variation
# Visualize Distributions

library(tidyverse)

glimpse(diamonds)

ggplot(diamonds) +
  geom_bar(mapping = aes(x = cut))

diamonds %>% count(cut)

# continuous
ggplot(data = diamonds) + 
  geom_histogram(mapping = aes(x=carat), binwidth=0.5)

diamonds %>% count(cut_width(carat, 0.5))

small <- diamonds %>% filter(carat < 3)

ggplot(data = small, mapping = aes(x = carat)) +
  geom_histogram(binwidth=0.1)

ggplot(data=small, mapping=aes(x=carat, color=cut)) +
  geom_freqpoly(binwidth=0.1)

ggplot(data=small, mapping=aes(x=carat)) +
  geom_histogram(binwidth=0.01)

glimpse(faithful)

ggplot(data=faithful, mapping=aes(x=eruptions)) +
  geom_histogram(binwidth=0.25)
  
ggplot(data=diamonds) + 
  geom_histogram(mapping=aes(x=y), binwidth=0.5)

ggplot(data=diamonds) + 
  geom_histogram(mapping=aes(x=y), binwidth=0.5) +
  coord_cartesian(ylim=c(0,50))

outliers <- diamonds %>% filter(y<3|y>20) %>% 
  select(price, x, y, z) %>% arrange(y)














