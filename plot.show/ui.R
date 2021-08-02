#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Plot the rate "),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("N",
                        "Range of N:",
                        min = 1,
                        max = 240,
                        value = c(1, 120)),
            sliderInput("r",
                        "Rnage of r:",
                        min = 0,
                        max = 0.01,
                        value = c(0, 0.01))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("ratePlot")
        )
    )
))
