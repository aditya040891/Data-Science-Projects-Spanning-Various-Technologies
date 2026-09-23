library(tidyverse)

ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy)) +
  facet_wrap(~class, nrow=2)

ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy)) +
  facet_grid(drv ~ cyl)

ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy)) +
  facet_grid(. ~ cyl)

ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy)) +
  facet_grid(drv ~ .)

