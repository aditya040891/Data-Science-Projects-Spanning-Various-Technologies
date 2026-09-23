library(tidyverse)

glimpse(faithful)

ggplot(data=faithful) +
  geom_point(aes(x = eruptions, y = waiting))

library(modelr)

mod <- lm(log(price) ~ log(carat),
          data=diamonds)

diamonds2 <- diamonds %>% add_residuals(mod) %>%
  mutate(resid = exp(resid))

?exp()

ggplot(data=diamonds2) + 
  geom_point(mapping=aes(x=carat, y=resid),
             alpha=1/50)

ggplot(data=diamonds2) +
  geom_boxplot(mapping=aes(x=cut, y=resid))







