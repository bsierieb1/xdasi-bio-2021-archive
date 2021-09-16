#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    textInput("name", "What's your name?"),
    textOutput("greeting")
)

# Define server logic
server1 <- function(input, output, session) {

  output$greeting <- renderText(paste0("Hello ", input$name))

#  output$greeting <- renderText(string())
#  string <- reactive(paste0("Hello ", input$name, "!"))

#  string <- reactive(paste0("Hello ", input$name, " you old cow!"))
#  output$greeting <- renderText(string()) 

}


# Run the application 
shinyApp(ui = ui, server = server1)
