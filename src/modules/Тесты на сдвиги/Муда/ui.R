library(shiny)

sidebarLayout(
    sidebarPanel(
        textInput("moodTestX", label = "вектор X.", "80, 100"),
        textInput("moodTestY", label = "вектор Y.", "10, 110"),
        selectInput("moodAlternative", "гипотеза", choices=c("two.sided", "less", "greater"))
    ),
    mainPanel(
        h2("Функция mood.test()"),
        h3("Выполняет двух выборочный тест Mood для разницы в параметрах масштаба."),
        h5("Синтаксис: mood.test(x, y, alternative = c(\"two.sided\", \"less\", \"greater\"))."),
        verbatimTextOutput("moodTestResult")
    )
)
