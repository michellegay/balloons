#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(treemap)
library(d3Tree)
library(plotly)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("CO2 Balloons"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("balloons", hover = "balloon_hover")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$balloons <- renderPlot({
        co2 <- read.csv("../data/apps_ref.csv")
        data <- data.frame("group" = as.factor(co2$category),
                           "subgroup" = as.factor(co2$app),
                           "num_balloons" = round((co2$balloons_per_use*
                                                       co2$use_per_day),2))
        
        data$label <- as.character(round((co2$balloons_per_use*
                                          co2$use_per_day),2))
        treemap(data[which(!is.na(data$num_balloons)),],
                        index=c("group","subgroup","label"),
                        vSize="num_balloons",
                        type="index",
                        align.labels=list(
                            c("left", "top"),
                            c("right", "bottom"),
                            c("center", "center")))
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
