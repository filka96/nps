library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("chisqTestX", label = "вектор X.", "80,100"),
        textInput("chisqTestY", label = "вектор Y.", "10,110"),
        checkboxInput("chisqTestCorrect", label = "chisqTestCorrect", value = TRUE),
        checkboxInput("chisqTestRescaleP", label = "chisqTestRescaleP", value = FALSE),
        checkboxInput("chisqSimulatePValue", label = "chisqSimulatePValue", value = FALSE),
        numericInput("chisqB", label = "chisqB", min=0,value = 200)

    ),
    mainPanel(
        h2("Функция chisq.test()"),
        h3("Возвращает хи квадрат распределение"),
        h5("Синтаксис: chisq.test(x, y = NULL, correct = TRUE, p = rep(1/length(x), length(x)), rescale.p = FALSE, simulate.p.value = FALSE, B = 2000)."),
        verbatimTextOutput("chisqTestResult")
    )
)
