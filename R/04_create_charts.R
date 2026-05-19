# IV. Create charts ---------------------------------------------------------

vat_chart <- tax_results %>%
  filter(tax_type == "VAT") %>%
  ggplot(aes(x = year)) +
  geom_line(aes(y = revenue_baseline, linetype = "Baseline"), linewidth = 1.2) +
  geom_line(aes(y = revenue_simulation, linetype = "Simulation"), linewidth = 1.2) +
  labs(
    title = "VAT Revenue: Baseline vs Simulation",
    x = "Year",
    y = "Revenue",
    linetype = ""
  ) +
  theme_minimal()

pit_chart <- tax_results %>%
  filter(tax_type == "PIT") %>%
  ggplot(aes(x = year)) +
  geom_line(aes(y = revenue_baseline, linetype = "Baseline"), linewidth = 1.2) +
  geom_line(aes(y = revenue_simulation, linetype = "Simulation"), linewidth = 1.2) +
  labs(
    title = "PIT Revenue: Baseline vs Simulation",
    x = "Year",
    y = "Revenue",
    linetype = ""
  ) +
  theme_minimal()

workflow_chart <- ggplot() +
  annotate("text", x = 1, y = 5, label = "1. Input Data", size = 5) +
  annotate("text", x = 1, y = 4, label = "2. Data Cleaning", size = 5) +
  annotate("text", x = 1, y = 3, label = "3. Baseline Calculation", size = 5) +
  annotate("text", x = 1, y = 2, label = "4. Reform Simulation", size = 5) +
  annotate("text", x = 1, y = 1, label = "5. Results and Reporting", size = 5) +
  xlim(0, 2) +
  ylim(0, 6) +
  theme_void()
