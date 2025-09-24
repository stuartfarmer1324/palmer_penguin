library(tidyverse)
pd <- read.table("C:\\Users\\stuar\\Documents\\palmer penguins\\DATA\\penguin_data.txt",header=TRUE)
pd
model1 <- lm(bill_length_mm ~ bill_depth_mm, pd)

plot_penguin <- ggplot(data = model1, 
                       aes(x=bill_length_mm, y=bill_depth_mm))+
  stat_summary(geom="pointrange", fun.data=mean_se)+
  theme_classic()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
plot_penguin

