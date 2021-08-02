cal.rate <- function(N.lim, r.lim) {
    rate <- function(N, r) {
        p <- (1 + r) ^ N
        0.5*(1+N)*r /(p*N*r / (p-1) - 1)
    }
    N <- seq(N.lim[1], N.lim[2])
    r <- seq(r.lim[1], r.lim[2], length.out=diff(N.lim)+1)
    z <- outer(N, r, rate)
    list(N=N, r=r, z=z)
}

plot.rate <- function(d, col="lightblue",
    theta=30, phi=20,
    r=50,
    expand=0.5,
    ltheta=90, lphi=180,
    shade=0.75,
    nticks=5) {
    
    # sub=expression(italic(f)~(bold(x))==frac(1,2~pi~sqrt(sigma[11]~
    # sigma[22]~(1-rho^2)))~phantom(0)^bold(.)~exp~bgroup("{",
    # list(-frac(1,2(1-rho^2)),
    # bgroup("[", frac((x[1]~-~mu[1])^2, sigma[11])~-~2~rho~frac(x[1]~-~mu[1],
    # sqrt(sigma[11]))~ frac(x[2]~-~mu[2],sqrt(sigma[22]))~+~
    # frac((x[2]~-~mu[2])^2, sigma[22]),"]")),"}"))

    persp(d$N, d$r, d$z,
    xlab="N", ylab="r", zlab="z",
    main="Plot the rate ",
    # sub=sub,
    col="lightblue",
    theta=theta, phi=phi,
    r=r,
    expand=expand,
    ltheta=ltheta, lphi=lphi,
    shade=shade,
    ticktype="detailed",
    nticks=nticks) # produces the 3-D plot

    # mtext(expression(list(mu[1]==0,mu[2]==0,sigma[11]==10,sigma[22]==10,sigma[12]==15,rho==0.5)), side=3) # adding a text line to the graph
}

if (FALSE) {
    source("./src/cal.rate.r")
    d <- cal.rate(N.lim=c(1,120), r.lim=c(0, 0.01))
    plot.rate(d=d)
    
}
