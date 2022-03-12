server <- function(input, output,session){
  output$plot <- renderPlot({
    data <- getSymbols(input$stocks,  
                       from = input$date[1],
                       to = input$date[2],
                       auto.assign = FALSE   
    )
    chartSeries(data, theme = chartTheme('white',up.col='orange',dn.col='gray'),
                type = "line", log.scale = input$log, TA = NULL)
    
  })
}
shinyApp(ui, server)