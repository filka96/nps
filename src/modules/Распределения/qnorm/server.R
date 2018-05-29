library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$qnormResult <- renderPrint({
        qnorm(stringToArray(input$qnormP), stringToArray(input$qnormMean), stringToArray(input$qnormSd), input$qnormLowerTail, input$qnormLogP)
    })
}
