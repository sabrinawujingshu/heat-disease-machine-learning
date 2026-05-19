# Heart Disease Classification — Machine Learning Final Project

This repository contains an R Markdown analysis for classifying heart disease status using the UCI Heart Disease dataset. The project compares logistic regression, radial-basis SVM, and XGBoost models using train/test performance, ROC/AUC, sensitivity, specificity, F1 score, confusion matrices, and feature importance.

## Project summary

- **Dataset:** UCI Machine Learning Repository Heart Disease dataset
- **Primary analysis sample:** Cleveland processed dataset only, after checking missingness across the four available sites
- **Outcome:** Binary heart disease status, where `num = 0` is coded as `no_disease` and `num = 1–4` is coded as `disease`
- **Models:** Logistic regression, SVM with radial kernel, and XGBoost
- **Validation:** 80/20 stratified train/test split; 5-fold cross-validation for SVM and XGBoost hyperparameter tuning
- **Main metrics:** Test AUC, accuracy, sensitivity, specificity, F1 score, and test error

## Repository structure

```text
heart-disease-ml-final-project/
├── analysis/
│   ├── heart_disease_ml_report.Rmd        # Clean GitHub-ready report
│   └── ML_final_Project_0508_original.Rmd # Original submitted Rmd for reference
├── data/
│   └── raw/
│       └── heart_disease/                 # UCI Heart Disease raw/processed files
├── docs/                                  # GitHub Pages output folder after rendering
├── scripts/
│   └── render_report.R                    # Render report to docs/index.html
├── .github/workflows/
│   └── render-report.yml                  # Optional GitHub Actions workflow
├── .gitignore
├── DESCRIPTION                            # R package dependencies for reproducibility
├── LICENSE
└── README.md
```

## How to reproduce the analysis locally

1. Open this folder in RStudio or set your working directory to the repository root.
2. Install required packages:

```r
install.packages(c(
  "forcats", "xgboost", "caret", "pROC", "corrplot", "tidyverse",
  "kernlab", "gridExtra", "ggplot2", "gtsummary", "rmarkdown", "knitr"
))
```

3. Render the report:

```r
source("scripts/render_report.R")
```

The rendered HTML report will be written to `docs/index.html`.

You can also open `analysis/heart_disease_ml_report.Rmd` and click **Knit** in RStudio.

## Data citation

Janosi A, Steinbrunn W, Pfisterer M, Detrano R. Heart Disease [Dataset]. UCI Machine Learning Repository. 1989. doi:10.24432/C52P4X.

## Notes

This analysis is for coursework and educational purposes. It is not intended for clinical decision-making.
