library(shiny)

sidebarLayout(
    sidebarPanel(
    ),
    mainPanel(
        h2("Функция chisq.test()"),
        h3("Возвращает "),
        h5("Синтаксис: chisq.test(x, y = NULL, correct = TRUE, p = rep(1/length(x), length(x)), rescale.p = FALSE, simulate.p.value = FALSE, B = 2000)."),
        verbatimTextOutput("chisqTestResult")
    )
)
