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
      uiOutput("countryOutput"),
      checkboxInput("ArrangePrice", "Sort Price?", TRUE),
      shinyjs::colourInput("col", "Select your colour for histogram", "violetred4")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Histogram", plotOutput("Histogram")),
        tabPanel("Results", DT::dataTableOutput("Results"))
      )
    )
  )
)