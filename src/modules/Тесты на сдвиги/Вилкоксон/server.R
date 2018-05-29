library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    output$wilcoxTestResult <- renderPrint({
        wilcox.test(
            x = stringToArray(input$wilcoxTestX),
            y = NULL,
            alternative = input$wilcoxTestAlternative,
            mu = input$wilcoxTestMu,
            paired = input$wilcoxTestPaired,
            exact = NULL,
            correct = input$wilcoxTestCorrect,
            conf.int = input$wilcoxTestConfInt,
            conf.level = input$wilcoxTestConfLevel
        )
    })
}
