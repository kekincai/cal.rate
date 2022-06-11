plot.heat <- function(d = d) {
  par(fg = NA, col = "black")
  filled.contour(
    x = d$m,
    y = d$Rm,
    z = d$Rc,
    color.palette = colorRampPalette(c("blue", "yellow", "red")),
    plot.title = title(
      main = "compounding frequency of m TO continuously compounded rate",
      xlab = "m", ylab = "Rm"
    ),
    nlevels = 1000,
    plot.axes = {
      axis(side = 1)
      axis(side = 2)
    },
    key.title = title(main = "Rc"),
    key.axes = axis(4)
  )
}

if (FALSE) {
  source("./src/filled.contour.r")
  plot.heat(d = d)
}