library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('pnormQ', 'вектор квантилей', "2"),
        textInput('pnormMean', 'вектор средних', "5"),
        textInput('pnormSd', 'вектор стандартных отклонений', "3"),
        checkboxInput("pnormLowerTail", label = "функция распределения F(x) = P(X <= x), иначе P(X > x) = 1 − F(x).", value = TRUE),
        checkboxInput("pnormLogP", label = "логарифмическая вероятность log(p);", value = FALSE)
    ),
    mainPanel(
        h2("Функция pnorm()"),
        h3("Возвращает кумулятивную нормальную вероятность, т.е функцию распределения F(x)."),
        h5("Синтаксис: pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)."),
        verbatimTextOutput("pnormResult")
    )
)
