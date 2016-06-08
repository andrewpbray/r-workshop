# ggplot2 demo code
library(ggplot2)
library(dplyr)
set.seed(42)
small <- diamonds %>% sample_n(1000)


ggplot(small) + geom_point(aes(x = carat, y = price, color = cut)) + 
  scale_y_log10() + 
  facet_wrap(~ cut, nrow = 1) + 
  ggtitle("First example") +
  theme_bw()


ggplot(small)
p <- ggplot(small)
p
str(p)

g <- geom_point(aes(x = carat, y = price, colour = cut))
p + g
a <- p + g + scale_y_log10()
p + g + scale_y_log10() + facet_wrap(~cut) 
p + g + scale_y_log10() + facet_wrap(~cut) + ggtitle("First example")




# Mapping versus setting
p <- ggplot(small)
p + geom_point(aes(x = carat, y = price, colour = cut))
p + geom_point(aes(x = carat, y = price), colour = cut)
p + geom_point(aes(x = carat, y = price,
                   colour = c("blue", "red")))





# Faceting
p + geom_point(aes(x = carat, y = price)) + 
  facet_wrap(~cut)

p + geom_point(aes(x = carat, y = price)) + 
  facet_wrap(~cut, nrow = 1)

p + geom_point(aes(x = carat, y = price)) + 
  facet_wrap(~cut, ncol = 1)

p + geom_point(aes(x = carat, y = price)) + 
  facet_grid(cut ~ color)





