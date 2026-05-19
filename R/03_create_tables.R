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
