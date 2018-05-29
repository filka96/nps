library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("qchisqP", label = "вектор вероятностей.", "0.95,0.80"),
        numericInput("qchisqDf", label = "степень свободы", min=0,value = 1),
        numericInput("qchisqNcp", label = "параметр нецентральности", min=0, value = 0),
        checkboxInput("qchisqLowerTail", label = "функция распределения F(x) = P(X <= x), иначе P(X > x) = 1 − F(x).", value = TRUE),
        checkboxInput("qchisqLogP", label = "логарифмическая вероятность log(p);", value = FALSE)

    ),
    mainPanel(
        h2("Функция qchisq()"),
        h3("Возвращает хи квадрат. (узнать красивое название)"),
        h5("Синтаксис: qchisq(p, df, ncp = 0, lower.tail = TRUE, log.p = FALSE)."),
        verbatimTextOutput("qchisqResult")
    )
)
