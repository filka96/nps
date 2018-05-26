library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$corTestResult <- renderPrint({
        cor.test(stringToArray(input$corTestX),stringToArray(input$corTestY),method=input$corTestMethod)
    })
}
