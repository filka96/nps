library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$corResult <- renderPrint({
        cor(stringToArray(input$corX),stringToArray(input$corY),"everything",input$corMethod)
    })
}
