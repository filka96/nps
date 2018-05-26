library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('corTestX', 'вектор X', "3.6, 7.8, 9.6, 5.7, 8.9"),
        textInput('corTestY', 'вектор Y', "2.7, 8.9, 6.5, 8.8, 6.4"),
        selectInput("corTestMethod", "метод", choices=c("kendall","spearman"))
    ),
    mainPanel(
        h3("Вычисляет выборочный коэффициент корреляции"),
        h5("Синтаксис: cor(x, y, method = c(\"kendall\",\"spearman\"))."),
        verbatimTextOutput("corTestResult")
    )
)
