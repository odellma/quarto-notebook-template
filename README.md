# R Quarto Template

A reusable template repository for reproducible R analyses using Quarto and `renv`.

## Project structure

- `R/` — reusable R functions
- `data/raw/` — original, unmodified data
- `data/processed/` — data created by analysis scripts
- `data/reference/` — reference files used by analyses
- `data/example/` — small example datasets
- `notebooks/` — Quarto analysis notebooks
- `output/` — rendered reports and generated outputs
- `renv.lock` — recorded R package versions

## Getting started

1. Open the `.Rproj` file in RStudio.
2. Restore the project packages:

   ```r
   renv::restore()