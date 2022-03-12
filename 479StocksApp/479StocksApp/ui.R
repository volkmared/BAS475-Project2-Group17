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
library(tidyquant)
library(shinyWidgets)

ui <- dashboardPage(
  dashboardHeader(title = "Shiny Stock App"),
  dashboardSidebar(
    radioGroupButtons(
      inputId = "Id004",
      label = "Choose a Theme", 
      choices = c("white", "black"),
      selected = "white"
    )
  ),
  dashboardBody(
    box(textInput("stocks", "Type in a Stock Code Here (AAPL, GM, GOOG...)", "TSLA"),width = 10),
    box(dateRangeInput("date", "Date Range ", start = "2013-01-01", end = "2022-01-15",min = "2007-01-01", max = "2022-01-15",format = "yyyy-mm-dd" ),width = 5),
    box(checkboxInput(inputId = "log", label = "log y axis", value = FALSE),width = 5),
    box(plotOutput("plot"),width = 10))
  
)
