library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$chisqTestResult <- renderPrint({
        chisq.test(stringToArray(input$chisqTestX), stringToArray(input$chisqTestY), input$chisqTestCorrect,
           rep(1/length(input$chisqTestX), length(input$chisqTestX)), input$chisqTestRescaleP,
           input$chisqSimulatePValue, input$chisqB)
    })
}

