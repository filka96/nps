library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$qchisqResult <- renderPrint({
        qchisq(stringToArray(input$qchisqP), input$qchisqDf, input$qchisqNcp, input$qchisqLowerTail, input$qchisqLogP)
    })
}
