library(plotly)
plot.3d <- function(d=d) {
    plot_ly(x=d$N,
            y=d$r, 
            z=d$z, 
            type="scatter3d",
            mode="markers", 
            name = "Obs", 
            marker = list(size = 3)) %>% add_surface()
}

if (FALSE) {
    source("./src/plot.3d.r")
    d <- cal.rate(N.lim=c(36, 60), r.lim=c(0, 0.001))
    plot.3d(d)
    
}