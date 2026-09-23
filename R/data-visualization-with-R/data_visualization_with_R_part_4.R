library(ggplot2)

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(~class)

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_grid(year~cyl)

ggplot(mpg, aes(x=displ, y=hwy, color=class)) +
  geom_point() +
  labs(title="Fuel Efficiency By Engine Power",
       subtitle="Fuel Economy Data From 1999 and 2008 for 38 popular car models",
       x = "Engine Power (litres displacement)",
       y = "Fuel Efficiency (miles per gallon)",
       color = "Car Type")


library(dplyr)

best_in_class <- mpg %>% 
  group_by(class) %>% 
  filter(row_number(desc(hwy))==1)

ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(color=class)) +
  geom_label(data = best_in_class, 
             aes(label=model), 
             alpha=0.5)

#########################################################

library(ggrepel)

ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(color=class)) +
  geom_text_repel(data=best_in_class, aes=(label=model))



