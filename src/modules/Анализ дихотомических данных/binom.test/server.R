library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$binomTestResult <- renderPrint({
        binom.test(stringToArray(input$binomTestX), input$binomTestN, input$binomTestP, input$binomTestAlternative, input$binomTestConfLevel)
    })
}
