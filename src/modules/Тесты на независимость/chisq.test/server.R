library(shiny)
library(npsm)
library(Rfit)

function(input, output, session) {
    output$chisqTest <- renderPrint({
        chisq.test(x, y = NULL, correct = TRUE,
           p = rep(1/length(x), length(x)), rescale.p = FALSE,
           simulate.p.value = FALSE, B = 2000)
    })
}

