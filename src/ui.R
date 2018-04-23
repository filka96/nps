library(shiny)

TYPES = c('pbinom')
#TYPES=c('pbinom','qbinom','pnorm','qnorm','prop.test','binom.test')

do.call(navbarPage, c(title = 'NPSW', lapply(1 : length(TYPES), function(i) {
    tabPanel(TYPES[i], dget(paste("ui/", TYPES[i], ".R", sep = "")))
})))
