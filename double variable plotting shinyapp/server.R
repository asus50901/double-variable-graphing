library(shiny)
library(plotly)

shinyServer(server <- function(input, output) {
  
  output$plotlygraph <- renderPlotly({
    mathA <- function(x,y){
      eval(parse(text = input$func))
    }
    x <- seq(-1, 1, 0.01)
    y <- seq(-1, 1, 0.01)
    z <- outer(x, y, mathA)
    plot_ly(x = x, y = y, z = z, type = "surface") %>%
      layout(title = input$func)
  })
})