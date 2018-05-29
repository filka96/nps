library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('corTestX', 'вектор X', "3.6, 7.8, 9.6, 5.7, 8.9"),
        textInput('corTestY', 'вектор Y', "2.7, 8.9, 6.5, 8.8, 6.4"),
        selectInput("corTestMethod", "метод", choices=c("kendall","spearman"))
    ),
    mainPanel(
        h2("Функция cor.test()"),
        h3("Позволяет проверять гипотезу на связь между парными образцами."),
        h5("Синтаксис: cor.test(x, y, method = c(\"kendall\",\"spearman\"))."),
        verbatimTextOutput("corTestResult")
    )
)
