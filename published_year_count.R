library(tidyverse)
library(ggplot2)

text <- "D://OneDrive//OneDrive//Documents//Studium//Master/Semester#4//SEB//final_summary.csv"

literature <- read.csv2(text)

position = position_dodge(width = .75)
width = .75

p <- literature %>% 
  filter(Year<2021) %>% 
  ggplot(aes(x=Year)) +
  geom_bar(fill="gray", color="black") +
  geom_text(stat='count', aes(label=..count..), vjust=-1) +
  xlab("Year of Publication") + ylab("Counts") +
  theme_bw() +
  theme(text = element_text(size=20))
p
