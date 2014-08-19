library(plotly)

p <- plotly(username="jpcolino", key="6gm4rlpmgv")

trace1 <- list(
  x = c(1, 2, 3, 4), 
  y = c(0, 2, 3, 5), 
  fill = "tozeroy", 
  type = "scatter"
)
trace2 <- list(
  x = c(1, 2, 3, 4, 5, 11), 
  y = c(3, 5, 1, 7, 3, 13), 
  fill = "tonexty", 
  type = "scatter"
)
data <- list(trace1, trace2)

response <- p$plotly(data, kwargs=list(filename="basic-area", fileopt="overwrite"))
url <- response$url
filename <- response$filename
