library(shiny)
library(data.table)
shinyUI(pageWithSidebar(
  headerPanel("Next Word Prediction"),
  
  sidebarPanel(
    p('If you see an error, please enter a simple phrase in the text box or wait a few seconds')
    
    ),
  mainPanel(
    h3( 'Type in the Box '),
    textInput("userText", "",""),
    textOutput("firstWord"),
    textOutput("secondWord"),
    textOutput("thirdWord"),
    textOutput("otherWords")
  )
  ))
