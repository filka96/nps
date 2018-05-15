library(shiny)

PROGRAM_TITLE = 'NPSW'
UI_FILENAME = "ui.R"
SERVER_FILENAME = "server.R"
MODULES_PATH = "modules"

MODULES = list.dirs(path = MODULES_PATH, full.names = FALSE, recursive = FALSE)

shinyApp(
    do.call(navbarPage, c(title = PROGRAM_TITLE, lapply(1 : length(MODULES), function(i) {
        tabPanel(MODULES[i], dget(paste(MODULES_PATH, MODULES[i], UI_FILENAME, sep = "/")))
    }))),
    function(input, output, session) {
        lapply(1 : length(MODULES), function(i) {
            func <- dget(paste(MODULES_PATH, MODULES[i], SERVER_FILENAME, sep="/"))
            func(input, output, session)
        })
    }
)
