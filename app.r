# app.R
library(shiny)

ui <- fluidPage(
  titlePanel("My PaaS Assignment - Shiny App"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("num", "Choose a number:", min = 1, max = 100, value = 50)
    ),
    mainPanel(
      h3("Result"),
      textOutput("result"),
      plotOutput("plot")
    )
  )
)

server <- function(input, output, session) {
  output$result <- renderText({
    paste("You selected:", input$num)
  })

  output$plot <- renderPlot({
    x <- 1:input$num
    y <- x^2
    plot(x, y, type = "b", main = paste("x and x^2 for x = 1..", input$num))
  })
}

shinyApp(ui = ui, server = server)
