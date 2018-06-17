library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("kruskalTestX", label = "вектор X.", "18.5, 24, 17.2, 19.4"),
        textInput("kruskalTestY", label = "вектор Y.", "26.3, 25.3, 24, 24.2")
    ),
    mainPanel(
        h2("Функция kruskal.test()"),
        h3("Критерий Краскела — Уоллиса предназначен для проверки равенства медиан выборок."),
        h5("Синтаксис: kruskal.test(x, y, ...)."),
        verbatimTextOutput("kruskalTestResult")
    )
)
