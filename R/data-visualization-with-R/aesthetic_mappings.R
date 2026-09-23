library(tidyverse)

?ggplot

# Do cars with big engines use more fuel than cars with small fuels?

mpg

# mpg: displ, car's engine size, litres
# mpg: hwy, fuel efficiency on the highway, mpg
# creating ggplot
ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy))

#ggplot(data=DATASET) + 
 # geom_function(mappings = aes(mappings))

glimpse(mpg)

# displ, hwy, class

# aesthetic: visual property; Ex. size , color, shape
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, color=class))

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, size=class))

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, alpha=class))

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, shape=class))

ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ, y=hwy), color='blue')

