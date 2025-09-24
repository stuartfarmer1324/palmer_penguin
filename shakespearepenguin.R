library(tidyverse)
pd <- read.table("C:\\Users\\stuar\\Documents\\palmer penguins\\DATA\\penguin_data.txt",header=TRUE)
pd
model1 <- lm(bill_length_mm ~ bill_depth_mm, pd)

#This is a comment
#this is another comment
#commenting

plot_penguin <- ggplot(data = model1, 
                       aes(x=bill_length_mm, y=bill_depth_mm))+
  stat_summary(geom="pointrange", fun.data=mean_se)+
  theme_classic()
plot_penguin



