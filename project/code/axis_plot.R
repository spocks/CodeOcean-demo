## load library
library(ggplot2)

## load data
df <- read.csv("../data/data-1.csv")

plt <- ggplot(df, aes(x=Sepal.Length, y=Sepal.Width, shape=Species,
                      color=Species)) + geom_point()

pdf("../results/plot_data.pdf", width = 5, height = 5)
print(plt)
dev.off()
