library(shiny)

PROGRAM_TITLE = 'NPSW'
UI_FILENAME = "ui.R"
SERVER_FILENAME = "server.R"
MODULES_PATH = "modules"

#MODULES = list.dirs(path = MODULES_PATH, full.names = FALSE, recursive = FALSE)
MODULES = c("Анализ дихотомических данных","Тесты на сдвиги","Тесты на равенство дисперсий","Непараметрическая корреляция","Тесты на независимость","Распределения")

shinyApp(
    do.call(
        navbarPage, c(
            title = PROGRAM_TITLE,
            lapply(1 : length(MODULES), function(i) {
                FUNCTIONS = list.dirs(path = paste(MODULES_PATH, MODULES[i], sep="/"), full.names = FALSE, recursive = FALSE)
                tabPanel(
                    MODULES[i],
                    lapply(1 : length(FUNCTIONS), function(j) {
                        dget(paste(MODULES_PATH, MODULES[i],FUNCTIONS[j], UI_FILENAME, sep = "/"))
                    })
                )
            })
        )
    ),
    function(input, output, session) {
        lapply(1 : length(MODULES), function(i) {
            FUNCTIONS = list.dirs(path = paste(MODULES_PATH, MODULES[i], sep="/"), full.names = FALSE, recursive = FALSE)
            lapply(1 : length(FUNCTIONS), function(j) {
                func <- dget(paste(MODULES_PATH, MODULES[i],FUNCTIONS[j], SERVER_FILENAME, sep = "/"))
                func(input, output, session)
            })
        })
    }
)
