# III. Create tables --------------------------------------------------------

summary_table <- tax_results %>%
  group_by(tax_type) %>%
  summarise(
    Revenue_Baseline = sum(revenue_baseline, na.rm = TRUE),
    Revenue_Simulation = sum(revenue_simulation, na.rm = TRUE),
    Revenue_Change = Revenue_Simulation - Revenue_Baseline,
    Revenue_Change_Percent = Revenue_Change / Revenue_Baseline * 100,
    .groups = "drop"
  )

vat_table <- summary_table %>%
  filter(tax_type == "VAT")

pit_table <- summary_table %>%
  filter(tax_type == "PIT")

cit_table <- summary_table %>%
  filter(tax_type == "CIT")




# Customs table -----------------------------------------------------------

# library(knitr)
# library(kableExtra)
# 
# customs_tbl <- data.frame(
#   `HS Code` = c(
#     "0701 90 50",
#     "0702 00 00",
#     "0409 00 00",
#     "0901 11 00",
#     "1006 20 00",
#     "1701 99 10",
#     "1806 10 15",
#     "0805 10 20",
#     "0701 90 50",
#     "0703 10 19",
#     "0805 50 10"
#   ),
#   `Description` = c(
#     "Potatoes, fresh or chilled: Other",
#     "Tomatoes, fresh or chilled",
#     "Natural honey",
#     "Coffee, not roasted: Not decaffeinated",
#     "Husked brown rice",
#     "White sugar",
#     "Cocoa powder containing added sugar or other sweetening matter",
#     "Oranges, fresh or dried",
#     "Potatoes, fresh or chilled: Other",
#     "Onions and shallots, fresh or chilled: Other",
#     "Lemons and limes, fresh or dried"
#   ),
#   `Country of origin (ISO3)` = c(
#     "CHN", "CHN", "CHN", "CHN",
#     "MAR", "MAR", "MAR", "MAR",
#     "EGY", "EGY", "EGY"
#   ),
#   `Supplementary unit` = c(
#     "kg", "kg", "kg", "kg",
#     "kg", "kg", "kg", "kg",
#     "kg", "kg", "kg"
#   ),
#   `MFN customs rate` = c(
#     "15%", "15%", "15%", "15%",
#     "", "", "", "",
#     "", "", ""
#   ),
#   `MFN specific duty` = c(
#     "", "", "", "",
#     "", "", "", "",
#     "", "", ""
#   ),
#   `FTA preferential rate` = c(
#     "", "", "", "",
#     "5%", "5%", "5%", "5%",
#     "5%", "5%", "5%"
#   ),
#   `FTA specific duty` = c(
#     "", "", "", "",
#     "", "", "", "",
#     "0.5 per kg", "0.5 per kg", "0.5 per kg"
#   ),
#   `Customs value - MFN` = c(
#     10000, 8000, 12000, 6000,
#     "", "", "", "",
#     "", "", ""
#   ),
#   `Import quantity - MFN` = c(
#     5000, 4000, 3000, 1500,
#     "", "", "", "",
#     "", "", ""
#   ),
#   `Customs duty - MFN` = c(
#     10000 * 0.15,
#     8000 * 0.15,
#     12000 * 0.15,
#     6000 * 0.15,
#     "", "", "", "",
#     "", "", ""
#   ),
#   `Customs value - FTA` = c(
#     "", "", "", "",
#     5000, 9000, 7000, 4000,
#     20000, 15000, 10000
#   ),
#   `Import quantity - FTA` = c(
#     "", "", "", "",
#     2500, 6000, 3500, 1000,
#     2000, 500, 300
#   ),
#   `Customs duty - FTA` = c(
#     "", "", "", "",
#     5000 * 0.05,
#     9000 * 0.05,
#     7000 * 0.05,
#     4000 * 0.05,
#     20000 * 0.05 + 2000 * 0.5,
#     15000 * 0.05 + 500 * 0.5,
#     10000 * 0.05 + 300 * 0.5
#   ),
#   check.names = FALSE
# )
# 
# customs_tbl |>
#   kable(
#     format = "html",
#     escape = FALSE,
#     align = c("l", "l", "c", rep("c", 10))
#   ) |>
#   kable_styling(
#     full_width = TRUE,
#     position = "left",
#     font_size = 8,
#     bootstrap_options = c("condensed", "bordered")
#   ) |>
#   row_spec(
#     0,
#     bold = TRUE,
#     color = "white",
#     background = "#2F75B5"
#   ) |>
#   column_spec(1, width = "8em") |>
#   column_spec(2, width = "24em") |>
#   column_spec(3, width = "8em") |>
#   column_spec(4:14, width = "8em")
