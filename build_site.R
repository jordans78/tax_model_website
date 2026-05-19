# build_site.R -------------------------------------------------------------

# Install packages if needed
# install.packages(c("bookdown", "rmarkdown", "knitr", "dplyr", "ggplot2", "DT", "tibble"))

library(bookdown)

bookdown::render_book(
  input = "index.Rmd",
  output_format = "bookdown::gitbook"
)
