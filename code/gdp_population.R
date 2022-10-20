library(tidyverse)

gapminder_1997 <- read_csv("gapminder_1997.csv")

name <- "Ben"
name

age <- 26
age

getwd() #outputs the current directory

ggplot(data = gapminder_1997) +
  aes(x = gdpPercap) +
  labs(x = "GDP Per Capita") +
  aes(y = lifeExp) +
  labs(y= "Life Expectory") +
  geom_point() +
  labs(title = "Do people in wea;thy countries live longer") +
  aes(color = continent)+
  scale_color_brewer(palette = 'Set1') +
  aes(size = pop/100000) +
  labs(size = "Population (in millions)")

gapminder_data <- read_csv("gapminder_data.csv")
ggplot(data = gapminder_data) +
  aes(x = continent, y= lifeExp)+
  geom_boxplot()
#geom_point

ggplot(data = gapminder_1997) +
  aes(x = continent, y= lifeExp)+
  geom_violin(aes(fill = continent)) +
  geom_jitter(alpha = 0.5) #position of the points are radom each time


ggplot(data = gapminder_1997) +
  aes(x=lifeExp) +
  geom_histogram(bins=20)

#ggplot2 Themes

ggplot(data = gapminder_1997) +
  aes(x=lifeExp) +
  geom_histogram() +
  theme_minimal() #+
#  theme(axis.test.x = element_text(angle= 45, vjust = 0.5, hjust = 1))


#Facet

ggplot(data = gapminder_1997) +
  aes(x=gdpPercap, y=lifeExp) +
  geom_point() +
  facet_grid(vars(continent))

ggsave("awesome_plot.jpg", width = 6, height = 4)

# violin_plot + theme_bw() won't change the original format, to change, use violin_plot <- violin_plot + theme_bw()

install.packages(c("gganimate", "gifski"))
library(gganimate)
library(gifski)

ggplot(data = gapminder_data) +
  aes(x = log(gdpPercap), y = lifeExp, size = pop, color = continent) +
  geom_point()

staticHansPlot <- ggplot(data =  gapminder_data) +
  aes(x = log(gdpPercap), y = lifeExp, size = pop, color = continent)

staticHansPlot

#animatedHansPlot <-staticHansPlot
#anim_save("hansAnimatedPlot.gif")
