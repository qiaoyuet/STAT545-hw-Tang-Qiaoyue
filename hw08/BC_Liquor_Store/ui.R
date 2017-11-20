library(shiny)
library(ggplot2)
library(dplyr)
library(DT)
library(shinyjs)

bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)

ui <- fluidPage(
  titlePanel("BC Liquor Store prices"),
  sidebarLayout(
    sidebarPanel(
      img(src = "logo.png", width = "100%"),
      sliderInput("priceInput", "Price", 0, 100, c(25, 40), pre = "$"),
      radioButtons("typeInput", "Product type",
                   choices = c("BEER", "REFRESHMENT", "SPIRITS", "WINE"),
                   selected = "WINE"),
      checkboxInput("filterCountry", "Filter by country?", FALSE),
      conditionalPanel(
        condition = "input.filterCountry",
        uiOutput("countryOutput")
      ),
      checkboxInput("ArrangePrice", "Sort Price?", TRUE),
      shinyjs::colourInput("col", "Select your colour for histogram", "violetred4")
    ),
    mainPanel(
      h4(textOutput("summaryText")),
      downloadButton("download", "Download the results here!"),
      tabsetPanel(
        tabPanel("Histogram", plotOutput("Histogram")),
        tabPanel("Results", DT::dataTableOutput("Results"))
      )
    )
  )
)