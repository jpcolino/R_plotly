library("plotly")

p <- plotly(username="jpcolino", key="6gm4rlpmgv")

x0 = rnorm(500)
x1 = rnorm(500)+1
data0 = list(x=x0,
             type='histogramx',
             opacity=0.8)
data1 = list(x=x1,
             type='histogramx',
             opacity=0.8)
layout = list(barmode='overlay')  

response = p$plotly(data0, data1, kwargs=list(layout=layout)) 

browseURL(response$url)