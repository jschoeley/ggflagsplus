library(ggflags)
library(gridExtra)
library(grid)
library(grImport2)

data("lflags")

lf <- names(lflags)
lg <- lapply(lflags, pictureGrob, height=unit(5,"mm"))

gl <- mapply(function(x,y) arrangeGrob(x, top=y), x=lg, y=lf, SIMPLIFY = FALSE)

ggplot2::ggsave("./inst/small_demo/flags.pdf", grid.arrange(grobs=gl), width=10, height=10)
