ggflags
-------

flag geom for ggplot2

``` r
library(ggflags)
```

    ## Loading required package: ggplot2

``` r
set.seed(1234)
d <- data.frame(x=rnorm(50), y=rnorm(50), 
                country=sample(c("ar","fr", "nz", "gb", "es", "ca", "lv", "qa"), 50, TRUE), 
                stringsAsFactors = FALSE)
ggplot(d, aes(x=x, y=y, country=country, size=x)) + 
  geom_flag() + 
  scale_country() +
  scale_size(range = c(0, 15))
```

![](README_files/figure-markdown_github/demo-1.png)

The flag SVG assets, used under the [CC-BY
licence](https://github.com/eosrei/emojione-color-font/blob/master/LICENSE-CC-BY.txt),
are taken from the EmojiOne set:
<a href="https://github.com/eosrei/emojione-color-font" class="uri">https://github.com/eosrei/emojione-color-font</a>

(Note: the EmojiOne set doesn’t include UK counties or US states!)

![](README_files/figure-markdown_github/flags.png)

(note: proof of principle only)
