library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$moodTestResult <- renderPrint({
        mood.test(
            x = stringToArray(input$moodTestX),
            y = stringToArray(input$moodTestY),
            alternative = input$moodTestAlternative
        )
    })
}
