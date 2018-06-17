library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("wilcoxTestX", label = "вектор X.", "80,100"),
        textInput("wilcoxTestY", label = "вектор Y.", "10,110"),
        selectInput("wilcoxTestAlternative", "гипотеза", choices=c("two.sided", "less", "greater")),
        numericInput("wilcoxTestMu", label = "mu", min=0,value = 0),
        checkboxInput("wilcoxTestPaired", label = "двухкаскадные", value = FALSE),
        checkboxInput("wilcoxTestCorrect", label = "коррекция непрерывности", value = TRUE),
        checkboxInput("wilcoxTestConfInt", label = "доверительный интервал", value = FALSE),
        sliderInput("wilcoxTestConfLevel", label = "", min = 0, max = 1, value = 0.95)

    ),
    mainPanel(
        h2("Функция wilcox.test()"),
        h3("Выполняет одно- и двухкаскадные тесты Уилкоксона по векторам данных"),
        h5("Синтаксис: wilcox.test(x, y = NULL, alternative = c(\"two.sided\", \"less\", \"greater\"), mu = 0, paired = FALSE, exact = NULL, correct = TRUE, conf.int = FALSE, conf.level = 0.95, ...)."),
        verbatimTextOutput("wilcoxTestResult")
    )
)
