library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$propTestResult <- renderPrint({
        prop.test(
            stringToArray(input$propTestX),
            stringToArray(input$propTestN)
        )
    })
}
