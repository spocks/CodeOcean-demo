## load library
library(ggplot2)

## load data
df <- read.csv("../data/data-1.csv")

## run analysis
pc <- prcomp(df[, 1:4])
pcdf <- data.frame(PC1=pc$x[,"PC1"], PC2=pc$x[,"PC2"], Species=df$Species)

## save output
pdf("../results/plot_PCA.pdf", width = 5, height = 5)
print(ggplot(pcdf, aes(PC1, PC2, colour=Species)) + geom_point() + stat_ellipse())
dev.off()
