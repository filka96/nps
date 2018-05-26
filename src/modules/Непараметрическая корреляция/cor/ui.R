library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('corX', 'вектор X', "3.6, 7.8, 9.6, 5.7, 8.9"),
        textInput('corY', 'вектор Y', "2.7, 8.9, 6.5, 8.8, 6.4"),
        selectInput("corMethod", "метод", choices=c("kendall","spearman"))
    ),
    mainPanel(
        h2("Функция cor()"),
        h3("Вычисляет выборочный коэффициент корреляции"),
        h5("Синтаксис: cor(x, y, method = c(\"kendall\",\"spearman\"))."),
        verbatimTextOutput("corResult")
    )
)
