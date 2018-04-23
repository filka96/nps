library(shiny)

TYPES=c('pbinom','qbinom','pnorm','qnorm','prop.test','binom.test')

do.call(navbarPage, c(title='NPSW',lapply(1:length(TYPES), function(i) {
    functionName = TYPES[i]
    tabPanel(functionName,
        h1(functionName)
    )
})))
