library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Double Variables Graphing"),
  
  # Sidebar with a text input for math functions 
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "func", 
                label = "Function to be graphed", 
                value = "Insert a x y variable function"),
      submitButton("Let's Draw !"),
      helpText("This tool only draws a double variable function graph.", 
               br(), br(), 
               "Other sort of functions may return wierd results.",  
               br(), br(), 
               "Note that the graph is only for graphings but not exact value calculations.",
               br(), br(), 
               "Please enter specific math functions.",
               br(), br(), 
               "EX. (x^2) + 3*(y^3)",
               br(), br(), 
               "e^x should be inserted as exp(x)", 
               br(), br(), 
               "square roots should be inserted as sqrt(x)")
    ),
    
    # Show the requested math function graph
    mainPanel(
      plotlyOutput("plotlygraph")
    )
  )
))