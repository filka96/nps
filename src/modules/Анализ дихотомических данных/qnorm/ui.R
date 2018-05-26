library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('qnormP', 'вектор квантилей', "0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9"),
        textInput('qnormMean', 'вектор средних', "0.5"),
        textInput('qnormSd', 'вектор стандартных отклонений', "3"),
        checkboxInput("qnormLowerTail", label = "функция распределения F(x) = P(X <= x), иначе P(X > x) = 1 − F(x).", value = TRUE),
        checkboxInput("qnormLogP", label = "логарифмическая вероятность log(p);", value = FALSE)
    ),
    mainPanel(
        h2("Функция qnorm()"),
        h3("Возвращает кумулятивную нормальную вероятность, т.е функцию распределения F(x)."),
        h5("Синтаксис: qnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)."),
        verbatimTextOutput("qnormResult")
    )
)
