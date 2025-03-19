# ui.R
source("dependencies.R")
library(shiny)

ui <- fluidPage(
  titlePanel("Stock Data and Comparison"),

  sidebarLayout(
    sidebarPanel(
      selectInput("stock", "Select Stock:", choices = c("RELIANCE.NS", "TCS.NS", "HDFCBANK.NS", "INFY.NS")), # Add more stocks here
      dateRangeInput("dates", "Date Range:", start = Sys.Date() - 365, end = Sys.Date()),
      actionButton("fetch", "Fetch Data")
    ),

    mainPanel(
      tabsetPanel(
        tabPanel("Stock Data",
                 DTOutput("stock_table"),
                 plotOutput("stock_plot")
        ),
        tabPanel("Stock vs. Nifty",
                 plotOutput("comparison_plot")
        )
      )
    )
  )
)
