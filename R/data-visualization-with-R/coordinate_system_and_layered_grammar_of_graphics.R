library(tidyverse)

ggplot(data=mpg, mapping=aes(x=class, y=hwy)) + 
  geom_boxplot()

ggplot(data=mpg, mapping=aes(x=class, y=hwy)) + 
  geom_boxplot() + coord_flip()

world <- map_data("world")

glimpse(world)

ggplot(world, aes(long, lat, group=group)) +
  geom_polygon(fill="white", color="black")

ggplot(world, aes(long, lat, group=group)) +
  geom_polygon(fill="white", color="black") +
  coord_quickmap()

nz <- map_data('nz')

ggplot(nz, aes(long, lat, group=group)) +
  geom_polygon(fill="white", color="black") 

bar <- ggplot(data=diamonds) + 
  geom_bar(
    mapping=aes(x=cut, fill=cut),
    show.legend = FALSE,
    width = 1
  ) + theme(aspect.ratio=1) + labs(x=NULL, y=NULL)

bar

bar + coord_flip()

bar + coord_polar()

# ggplot(data=DATA) + 
#   GEOM_FUNCTION(
#     mapping = aes(MAPPINGS),
#     stat=STAT,
#     position=POSITION
#   ) + 
#   COORDINATE_FUNCTION() +
#   FACET_FUNCTION()






