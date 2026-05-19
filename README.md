# Tax Model Website Example

This is a simple example of a bookdown HTML website created with R.

## How to run

1. Open R or RStudio.
2. Set the working directory to this folder.
3. Install required packages if needed:

```r
install.packages(c("bookdown", "rmarkdown", "knitr", "dplyr", "ggplot2", "DT", "tibble"))
```

4. Run:

```r
source("build_site.R")
```

5. Open:

```text
_book/index.html
```

## Main files

- `index.Rmd`: first page of the website
- `01-overview.Rmd`: modeling framework
- `02-vat-module.Rmd`: VAT module example
- `03-pit-module.Rmd`: PIT module example
- `04-user-guide.Rmd`: user guide
- `R/`: helper scripts
- `data/`: example input data
- `www/style.css`: custom CSS style
