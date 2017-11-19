library(shiny)
library(ggplot2)
library(dplyr)
library(DT)

bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)

server <- function(input, output) {
  output$countryOutput <- renderUI({
    selectInput("countryInput", "Country",
                sort(unique(bcl$Country)),
                selected = "CANADA")
  })

  filtered <- reactive({
    if (is.null(input$countryInput)) {
      return(NULL)
    }

    if (input$ArrangePrice == TRUE) {
      bcl %>%
        filter(Price >= input$priceInput[1],
               Price <= input$priceInput[2],
               Type == input$typeInput,
               Country == input$countryInput
        ) %>%
        arrange(desc(Price))
    } else {
      bcl %>%
        filter(Price >= input$priceInput[1],
               Price <= input$priceInput[2],
               Type == input$typeInput,
               Country == input$countryInput
        )
    }

  })

  output$coolplot <- renderPlot({
    if (is.null(filtered())) {
      return()
    }
    if(nrow(filtered()) == 0) {
      return(NULL)
    }
    ggplot(filtered(), aes(Alcohol_Content)) +
      geom_histogram()
  })

  output$results <- DT::renderDataTable({
    if(nrow(filtered()) == 0) {
      return(NULL)
    }
    filtered()
  })
}