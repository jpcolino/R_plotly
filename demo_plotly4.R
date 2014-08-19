library(plotly)

p <- plotly(username="*****", key="*****")

prettyPlot <- ggplot(data=diamonds, aes(x=carat, y=price, colour=clarity))
prettyPlot <- prettyPlot + geom_point(alpha = 1/10)

p$ggplotly(prettyPlot)