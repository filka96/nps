library(shiny)
library(npsm)
library(Rfit)
#source("../util/stringToArray.R")

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$qbinomResult <- renderPrint({
        qbinom(stringToArray(input$qbinomP), input$qbinomSize, input$qbinomProb, lower.tail = input$qbinomLowerTail, log.p = input$qbinomLogP)
    })
}
