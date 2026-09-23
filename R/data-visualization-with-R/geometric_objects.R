library(tidyverse)

ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy))

ggplot(data=mpg) + 
  geom_smooth(mapping=aes(x=displ, y=hwy))

ggplot(data=mpg) + 
  geom_smooth(mapping=aes(x=displ, y=hwy, linetype=drv))

ggplot(data=mpg) + 
  geom_smooth(mapping=aes(x=displ, y=hwy, color=drv))

ggplot(data=mpg) + 
  geom_smooth(mapping=aes(x=displ, 
                          y=hwy, 
                          color=drv, 
                          linetype=drv))

ggplot(data=mpg) + 
  geom_smooth(mapping=aes(x=displ, 
                          y=hwy, 
                          color=drv, 
                          linetype=drv), show.legend=FALSE)

ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy)) +
  geom_smooth(mapping=aes(x=displ, y=hwy))

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(aes(color=class)) +
  geom_smooth()

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(aes(color=class)) +
  geom_smooth(data = filter(mpg, class=="pickup"), se=FALSE)










