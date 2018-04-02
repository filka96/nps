library(shiny)

ui <- dget("ui.R")
server <- dget("server.R")
shinyApp(ui = ui, server = server)
