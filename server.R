library(shiny)

# simple server site calculation to return the number power to 2.
PowerNum <- function(num1) num1^2

shinyServer(
  function(input,output) {
    output$inputValue<-renderPrint({input$num1})
    output$PowerTwo<-renderPrint({PowerNum(input$num1)})
  })