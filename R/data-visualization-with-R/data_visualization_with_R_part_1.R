library('ggplot2')

ggplot(mpg)

ggplot(mpg, aes(x=displ, y=hwy))

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point()

ggplot(mpg, aes(x=displ, y=hwy, color=class)) + geom_point()

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point(color='blue')
