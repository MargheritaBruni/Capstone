library(shiny)
library(data.table)
source("predict.R")

shinyServer(
  function(input,output){
   
    predictedWords <- reactive({predictThis(input$userText)})
    
    output$firstWord <- renderText({
      predictedWords()[1]
    })
    output$secondWord <- renderText({
      predictedWords()[2]
    })
    output$thirdWord <- renderText({
      predictedWords()[3]
    })
    output$otherWords <- renderText({
      predictedWords()[4:10]
    })
    #     }
  }
)