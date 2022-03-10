#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

server <- function(input, output,session){
  output$plot <- renderPlot({
    data <- getSymbols(input$stocks,  
                       from = input$date[1],
                       to = input$date[2],
                       auto.assign = FALSE   
    )
    chartSeries(data, theme = chartTheme('white',up.col='blue',dn.col='red'),
                type = "line", log.scale = input$log, TA = NULL)
    
  })
}
shinyApp(ui, server)
