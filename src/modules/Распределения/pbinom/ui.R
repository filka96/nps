library(shiny)

sidebarLayout(
    sidebarPanel(
        numericInput("pbinomQ", label = "число успехов", value = 1),
        numericInput("pbinomSize", label = "число испытаний", value = 10),
        sliderInput("pbinomProb", label = "вероятность успеха", min = 0, max = 1, value = 0.5),
        checkboxInput("pbinomLowerTail", label = "функция распределения F(x) = P(X <= x), иначе P(X > x) = 1 − F(x).", value = TRUE),
        checkboxInput("pbinomLogP", label = "логарифмическая вероятность log(p);", value = FALSE)
    ),
    mainPanel(
        h2("Функция pbinom()"),
        h3("Возвращает кумулятивную биномиальную вероятность, т.е функцию распределения F(x)."),
        h5("Синтаксис: pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)."),
        verbatimTextOutput("pbinomResult")
    )
)
