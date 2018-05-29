library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput('binomTestX', 'вектор вероятностей', "682, 243"),
        numericInput("binomTestN", label = "число наблюдений", min = 1, value = 10),
        sliderInput("binomTestP", label = "вероятность успеха", min = 0, max = 1, value = 0.5),
        selectInput("binomTestAlternative", "гипотеза", choices=c("two.sided", "less", "greater")),
        sliderInput("binomTestConfLevel", label = "доверительный интервал", min = 0, max = 1, value = 0.95)
    ),
    mainPanel(
        h2("Функция binom.test()"),
        h3("позволяет проверять гипотезу о равенстве вероятностей успеха в разных группах наблюдений или о равенстве вероятности успеха некоторому заданному числу (точный критерий)."),
        h5("Синтаксис: binom.test(x, n, p = 0.5, alternative = c(\"two.sided\", \"less\", \"greater\"), conf.level = 0.95)."),
        verbatimTextOutput("binomTestResult")
    )
)
