library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$pbinomResult <- renderPrint({
        pbinom(stringToArray(input$pbinomQ), input$pbinomSize, input$pbinomProb, lower.tail = input$pbinomLowerTail, log.p = input$pbinomLogP)
    })
}
