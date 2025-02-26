#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(quantmod)


ui <- dashboardPage(
  dashboardHeader(title = "Shiny Stock App"),
  dashboardSidebar(),
  dashboardBody(
    box(textInput("stocks", "Select a Stock", "TSLA"),width = 10),
    box(dateRangeInput("date", "date range ", start = "2013-01-01", end = "2021-12-15",min = "2007-01-01", max = "2021-12-15",format = "yyyy-mm-dd" ),width = 5),
    box(checkboxInput(inputId = "log", label = "log y axis", value = FALSE),width = 5),
    box(plotOutput("plot"),width = 10))
  
)
