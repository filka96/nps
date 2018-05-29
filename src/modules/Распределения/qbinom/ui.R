library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('qbinomP', 'вектор вероятностей', "0.2, 0.4, 0.6, 0.8"),
        numericInput("qbinomSize", label = "число наблюдений", value = 10),
        sliderInput("qbinomProb", label = "вероятность успеха", min = 0, max = 1, value = 0.5),
        checkboxInput("qbinomLowerTail", label = "функция распределения F(x) = P(X <= x), иначе P(X > x) = 1 − F(x).", value = TRUE),
        checkboxInput("qbinomLogP", label = "логарифмическая вероятность log(p);", value = FALSE)
    ),
    mainPanel(
        h3("Функция qbinom() возвращает квантили биномиального распределения, т.е. минимальное x, для которого F(x) > p."),
        h5("Синтаксис: qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE)."),
        verbatimTextOutput("qbinomResult")
    )
)
