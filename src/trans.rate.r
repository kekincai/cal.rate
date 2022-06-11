trans.rate <- function(Rm.lim, m.lim, n = 200) {
    .cal.Rc <- function(Rm, m) {
        m * log(1 + Rm / m)
    }
    Rm <- seq(Rm.lim[1], Rm.lim[2], length.out = n)
    # browser()
    m <- seq(m.lim[1], m.lim[2], length.out = n)
    Rc <- outer(Rm, m, .cal.Rc)
    list(Rm = Rm, m = m, Rc = Rc)
}

if (FALSE) {
    source("./src/trans.rate.r")
    d <- trans.rate(Rm.lim = c(0.01, 0.1), m.lim = c(1, 12))
}