#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(quantmod)
library(shinythemes)


# Define UI for application that draws a histogram
ui = basicPage(
  h1("Shiny Stock App"),
  textInput("stocks", "pick stock", "TSLA"),   
  dateRangeInput("date", "date range ", start = "2013-01-01", end = "2021-12-15",min = "2007-01-01", max = "2021-12-15",format = "yyyy-mm-dd" ),
  checkboxInput(inputId = "log", label = "log y axis", value = FALSE),
  plotOutput("plot"),
  themeSelector()
)# UI



shinyApp(ui = ui, server = server) # Launch App
