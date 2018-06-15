#######Load package
library(Interpol)
library(protr)
library(seqinr)
library(Peptides)
library(reshape2)
library(ggplot2)
library(scales)

data = read.csv("CP.csv", header = TRUE)

ggplot(data, aes(DP1,DP2,fill = MDGI, label = NA)) +
  geom_tile(color="black", size=0.5) + 
  geom_text() +
scale_fill_gradient2(  low = "blue", mid = "white",
  high = "red", midpoint =6,limit = c(0,12),
space = "Lab") +
  labs(
    x = "", 
    y = "",
    fill = "") +
theme(panel.grid.major = element_blank(),
  panel.border = element_blank(),
  panel.background = element_blank(),
  legend.title = element_text(size = 13),
        legend.text = element_text(size = 10),
        axis.title=element_text(size=15,face="bold"),
        axis.text.x = element_text(angle = 360, vjust = 1, size = 11,hjust = 1),
	axis.text.y = element_text(angle = 360, vjust = 1, size = 11,hjust = 1))
