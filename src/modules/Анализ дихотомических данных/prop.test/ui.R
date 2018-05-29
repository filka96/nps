library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('propTestX', 'вектор вероятностей', "83, 90, 129, 70"),
        textInput("propTestN", label = "вектор наблюдений", "86, 93, 136, 82"),
        sliderInput("propTestP", label = "вероятность успеха", min = 0, max = 1, value = 0.5),
        selectInput("propTestAlternative", "гипотеза", choices=c("two.sided", "less", "greater")),
        sliderInput("propTestConfLevel", label = "доверительный интервал", min = 0, max = 1, value = 0.95)
    ),
    mainPanel(
        h2("Функция prop.test()"),
        h3("позволяет проверять гипотезу о равенстве вероятностей успеха в разных группах наблюдений или о равенстве вероятности успеха некоторому заданному числу (нормальная аппроксимация)."),
        h5("Синтаксис: prop.test(x, n, p = 0.5, alternative = c(\"two.sided\", \"less\", \"greater\"), conf.level = 0.95)."),
        verbatimTextOutput("propTestResult")
    )
)
