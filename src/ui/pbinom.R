library(shiny)
library(npsm)

sidebarLayout(
    sidebarPanel(
        numericInput("q", label = "q", value = 1),
        numericInput("size", label = "size", value = 1),
        numericInput("prob", label = "prob", value = 1),
        checkboxInput("lowerTail", label = "lowerTail", value = TRUE),
        checkboxInput("logP", label = "logP", value = FALSE)
    ),
    mainPanel(
        verbatimTextOutput("pbinomResult")
    )
)
