library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("mcnemarTestX", label = "вектор X.", "80, 100"),
        textInput("mcnemarTestY", label = "вектор Y.", "10, 110"),
        checkboxInput("mcnemarTestCorrect", label = "коррекция непрерывности", value = TRUE)

    ),
    mainPanel(
        h2("Функция mcnemar.test()"),
        h3("Критерий Мак-Немара . (узнать красивое название)"),
        h5("Синтаксис: mcnemar.test(x, y = NULL, correct = TRUE)."),
        verbatimTextOutput("mcnemarTestResult")
    )
)
