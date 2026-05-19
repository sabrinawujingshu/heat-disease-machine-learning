# Render the main R Markdown report to docs/index.html.
# Run from the repository root:
# source("scripts/render_report.R")

if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  install.packages("rmarkdown")
}

if (!dir.exists("docs")) {
  dir.create("docs", recursive = TRUE)
}

rmarkdown::render(
  input = "analysis/heart_disease_ml_report.Rmd",
  output_format = "html_document",
  output_file = "index.html",
  output_dir = "docs",
  clean = TRUE
)
