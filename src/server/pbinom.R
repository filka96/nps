library(shiny)
library(npsm)
library(Rfit)

function(input, output, session) {
    output$pbinomResult <- renderPrint({
        pbinom(input$q, input$size, input$prob, lower.tail = input$lowerTail, log.p = input$logP)
    })
}
