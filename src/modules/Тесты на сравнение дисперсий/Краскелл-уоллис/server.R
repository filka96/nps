library(shiny)
library(npsm)
library(Rfit)

stringToArray <- function(string, splitter = ','){
    return (as.numeric(unlist(strsplit(string, splitter))))
}

function(input, output, session) {
    x <- c(2.9, 3.0, 2.5, 2.6, 3.2) # normal subjects
    y <- c(3.8, 2.7, 4.0, 2.4)      # with obstructive airway disease
    z <- c(2.8, 3.4, 3.7, 2.2, 2.0) # with asbestosis
    kruskal.test(list(x, y, z))
    ## Equivalently,
    x <- c(x, y, z)
    g <- factor(rep(1:3, c(5, 4, 5)),
    labels = c("Normal subjects",
       "Subjects with obstructive airway disease",
       "Subjects with asbestosis"))
    output$kruskalTestResult <- renderPrint({
        kruskal.test(x, g)
    })
}
