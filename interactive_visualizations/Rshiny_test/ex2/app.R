#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
    sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
    sliderInput("y", label = "and y is", min = 1, max = 50, value = 30),
    
    textOutput("product"),
    textOutput("product_plus5"),
    textOutput("product_plus10")
)

server <- function(input, output, session) {

    prod = reactive(input$x * input$y)

    output$product <- renderText(paste0("then, (x * y) is ", prod()))
    output$product_plus5 <- renderText(paste0("and, (x * y) + 5 is ", prod() + 5))
    output$product_plus10 <- renderText(paste0("and, (x * y) + 10 is ", prod() + 10))
 
}

# Run the application 
shinyApp(ui = ui, server = server)
