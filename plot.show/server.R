#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source("../src/cal.rate.r")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$ratePlot <- renderPlot({
        
        d <- cal.rate(N.lim=input$N, r.lim=input$r)
        plot.rate(d=d)

    })

})
