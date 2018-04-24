library(shiny)

TYPES = c('pbinom', 'qbinom', 'pnorm', 'qnorm', 'prop.test', 'binom.test')

function(input, output, session) {
    lapply(1 : length(TYPES), function(i) {
        func <- dget(paste("server/", TYPES[i], ".R", sep = ""))
        func(input, output, session)
    })
}
