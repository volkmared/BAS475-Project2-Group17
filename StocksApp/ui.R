library(shiny)
library(shinydashboard)
library(quantmod)


ui <- dashboardPage(
  dashboardHeader(title = "Shiny Stock App",  titleWidth = 450),
  dashboardSidebar(),
  dashboardBody(
    box(textInput("stocks", "Type in a Stock Code Here", "TSLA"),width = 10),
    box(dateRangeInput("date", "Select a Date Range", start = "2013-01-01", end = "2021-12-15",min = "2007-01-01", max = "2021-12-15",format = "yyyy-mm-dd" ),width = 5),
    box(checkboxInput(inputId = "log", label = "log y axis", value = FALSE),width = 5),
    box(plotOutput("plot"),width = 10)),
)