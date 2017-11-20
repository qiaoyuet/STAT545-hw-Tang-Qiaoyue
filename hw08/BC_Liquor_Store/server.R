library(shiny)
library(ggplot2)
library(dplyr)
library(DT)
library(shinyjs)

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
    
    if(input$filterCountry) {
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
    } else {
      bcl %>% 
        filter(Price >= input$priceInput[1],
               Price <= input$priceInput[2],
               Type == input$typeInput,
        )
    }
  })

  output$Histogram <- renderPlot({
    if (is.null(filtered())) {
      return()
    }
    if(nrow(filtered()) == 0) {
      return(NULL)
    }
    ggplot(filtered(), aes(Alcohol_Content)) +
      geom_histogram(fill = input$col)
  })

  output$Results <- DT::renderDataTable({
    if(nrow(filtered()) == 0) {
      return(NULL)
    }
    filtered()
  })
  
  output$summaryText <- renderText({
    opt <- nrow(filtered())
    if (is.null(opt)) {
      opt <- 0
    }
    paste0("We've found ", opt, " options for you!")
  })
  
  output$download <- downloadHandler(
    filename = function() {
      "results.csv"
    },
    content = function(content) {
      write.csv(filtered(), content)
    }
  )
  
}