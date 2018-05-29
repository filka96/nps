library(shiny)
library(npsm)
library(Rfit)

function(input, output, session) {
    output$pbinomResult <- renderPrint({
        pbinom(input$pbinomQ, input$pbinomSize, input$pbinomProb, lower.tail = input$pbinomLowerTail, log.p = input$pbinomLogP)
    })
}
