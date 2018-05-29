library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("wilcoxTestX", label = "вектор X.", "80,100"),
        selectInput("wilcoxTestAlternative", "гипотеза", choices=c("two.sided", "less", "greater")),
        numericInput("wilcoxTestMu", label = "mu", min=0,value = 0),
        checkboxInput("wilcoxTestPaired", label = "paired", value = FALSE),
        checkboxInput("wilcoxTestCorrect", label = "correct", value = TRUE),
        checkboxInput("wilcoxTestConfInt", label = "conf.int", value = FALSE),
        sliderInput("wilcoxTestConfLevel", label = "доверительный интервал", min = 0, max = 1, value = 0.95)

    ),
    mainPanel(
        h2("Функция wilcox.test()"),
        h3("Возвращает "),
        h5("Синтаксис: wilcox.test(x, y = NULL, alternative = c(\"two.sided\", \"less\", \"greater\"), mu = 0, paired = FALSE, exact = NULL, correct = TRUE, conf.int = FALSE, conf.level = 0.95, ...)."),
        verbatimTextOutput("wilcoxTestResult")
    )
)
