# II. Prepare example data --------------------------------------------------

data_path <- "data/tax_model_results.csv"

if (!file.exists(data_path)) {
  
  tax_results <- tibble::tibble(
    tax_type = c("VAT", "VAT", "PIT", "PIT", "CIT", "CIT"),
    year = c(2024, 2025, 2024, 2025, 2024, 2025),
    revenue_baseline = c(1000, 1100, 700, 760, 500, 540),
    revenue_simulation = c(1080, 1190, 740, 820, 530, 600)
  )
  
  dir.create("data", showWarnings = FALSE)
  write.csv(tax_results, data_path, row.names = FALSE)
  
} else {
  
  tax_results <- read.csv(data_path)
}
