library(shiny)

sidebarLayout(
    sidebarPanel(
        numericInput("q", label = "число успехов", value = 1),
        numericInput("size", label = "число испытаний", value = 10),
        sliderInput("prob", label = "вероятность успеха", min = 0, max = 1, value = 0.5),
        checkboxInput("lowerTail", label = "функция распределения F(x) = P(X <= x), иначе P(X > x) = 1 − F(x).", value = TRUE),
        checkboxInput("logP", label = "логарифмическая вероятность log(p);", value = FALSE)
    ),
    mainPanel(
        h3("Функция pbinom() возвращает кумулятивную биномиальную вероятность, т.е функцию распределения F(x)."),
        h5("Синтаксис: pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)."),
        verbatimTextOutput("pbinomResult")
    )
)
