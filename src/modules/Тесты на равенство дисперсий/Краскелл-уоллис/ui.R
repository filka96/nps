library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("kruskalTestX", label = "вектор X.", "2.9, 3.0, 2.5, 2.6, 3.2, 3.8, 2.7, 4.0, 2.4, 2.8, 3.4, 3.7, 2.2, 2.0")
        # textInput("kruskalTestG", label = "вектор G.", "80,100")
    ),
    mainPanel(
        h2("Функция kruskal.test()"),
        h3("Выполняет критерий суммирования ранга Крускал-Уоллиса нулевого значения"),
        h5("Синтаксис: kruskal.test(x, ...)."),
        verbatimTextOutput("kruskalTestResult")
    )
)
