library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    print(string)
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$mcnemarTestResult <- renderPrint({
        mcnemar.test(stringToArray(input$mcnemarTestX), stringToArray(input$mcnemarTestY), input$mcnemarTestCorrect)
    })
}
