
<!-- README.md is generated from README.Rmd. Please edit that file -->

## ggflagsplus: Plot flags of the world in ggplot2

A flag geom for ggplot2. Uses circular SVG flags. Fork of ggflags with
additional flags added.

# Install

Install from github:

``` r
devtools::install_github("jschoeley/ggflagsplus")
```

# Use

``` r
library(ggplot2)
library(ggflagsplus)

set.seed(1234)
d <- data.frame(
  x = rnorm(50), y = rnorm(50),
  country = sample(c("ar", "fr", "nz", "gb-eaw", "gb-sct", "gb-nir"),
                   50, TRUE),
  stringsAsFactors = FALSE
)

ggplot(d, aes(x = x, y = y, country = country, size = x)) +
  geom_flag() +
  scale_country() +
  scale_size(range = c(0, 15))
```

<img src="man/figures/README-demo-1.png" width="100%" />

The flag SVG assets, used under the [CC-BY
licence](https://github.com/eosrei/emojione-color-font/blob/master/LICENSE-CC-BY.txt),
are taken from the EmojiOne set:
<https://github.com/eosrei/emojione-color-font>

![](man/figures/flags.png)
