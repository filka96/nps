library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$pnormResult <- renderPrint({
        pnorm(stringToArray(input$pnormQ), stringToArray(input$pnormMean), stringToArray(input$pnormSd), input$pnormLowerTail, input$pnormLogP)
    })
}
