library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Developing Data Products Course Project"),
  sidebarPanel(
    h5('This is an extremely simple application where you type in a number (e.g. 4) and when click on submit button, the system shall calculate the number power to 2'),
    h3('Enter a Number (1 to 100)'),
    numericInput('num1','Base Number',1, min=1, max=100),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Your Number Power to 2 is'),
    verbatimTextOutput("PowerTwo")
  )
  ))