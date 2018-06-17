library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$kruskalTestResult <- renderPrint({
        kruskal.test(list(stringToArray(input$kruskalTestX), stringToArray(input$kruskalTestY)))
    })
}
