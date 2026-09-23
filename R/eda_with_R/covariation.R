library(tidyverse)

# Cat and continuous
ggplot(data = diamonds, mapping=aes(x = price)) +
  geom_freqpoly(mapping = aes(color=cut), binwidth=500)

ggplot(data=diamonds) + 
  geom_bar(mapping=aes(x = cut))

ggplot(data=diamonds, mapping = aes(x = price, y = ..density..)) + 
  geom_freqpoly(mapping=aes(color=cut), binwidth=500)

ggplot(data=diamonds, mapping=aes(x=cut, y=price)) +
  geom_boxplot()

ggplot(data=mpg, mapping=aes(x=class, y=hwy)) +
  geom_boxplot()

ggplot(data=mpg) + 
  geom_boxplot(mapping=aes(x=reorder(class, hwy, FUN=median), 
               y = hwy))

ggplot(data=mpg) + 
  geom_boxplot(mapping=aes(x=reorder(class, hwy, FUN=median), 
                           y = hwy)) + coord_flip()

# cat vs cat
ggplot(data=diamonds) +
  geom_count(mapping=aes(x=cut, y=color))

diamonds %>% count(color, cut)

diamonds %>% count(color, cut) %>% 
  ggplot(mapping=aes(x=color, y=cut)) +
  geom_tile(mapping=aes(fill=n))

# Continuous vs continuous
ggplot(data = diamonds) +
  geom_point(mapping=aes(x=carat, y=price))

ggplot(data = diamonds) +
  geom_point(mapping=aes(x=carat, y=price), alpha=1/100)

install.packages('hexbin')

ggplot(data=diamonds2) + 
  geom_hex(mapping=aes(x=carat, y=price))

ggplot(data=diamonds2) + 
  geom_bin2d(mapping=aes(x=carat, y=price))

ggplot(data=small, mapping=aes(x=carat, y=price)) + 
  geom_boxplot(mapping=aes(group=cut_width(carat, 0.1)))

ggplot(data=small, mapping=aes(x=carat, y=price)) + 
  geom_boxplot(mapping=aes(group=cut_number(carat, 20)))













