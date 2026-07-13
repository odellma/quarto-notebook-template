# R Quarto Template

A reusable template repository for reproducible R analyses using Quarto and `renv`.

---

# Creating a New Project

Use this repository as the starting point for a new analysis project.

## 1. Create a repository from the template

Create a new repository from this template (or clone the template repository if working locally).

## 2. Rename the project

* Rename the project folder

* Rename the .Rproj file

If creating a new GitHub repository, update the Git remote:

```bash
git remote remove origin
git remote add origin https://github.com/<username>/<repository>.git
```

## 3. Open the project

Open the `.Rproj` file in RStudio.

## 4. Restore project packages

Restore the project environment using `renv`:

```r
renv::restore()
```

This installs the package versions recorded in `renv.lock`.

## 5. Verify the installation

Render one of the example notebooks or run:

```bash
quarto render
```

If the render succeeds, your environment is ready.

## 6. Customize the project

Before beginning your analysis:

* Update this README with project-specific information.
* Replace the project title and author information in new notebooks.
* Remove or archive the example notebook if it is no longer needed.
* Add your own data to `data/raw/`.
* Create new notebooks for your analysis.

## 7. Commit the initialized project

Once everything renders correctly, make an initial commit before beginning the analysis.

---

# Project Structure

```
R/
├── functions.R          # Reusable R functions

data/
├── raw/                 # Original, immutable data
├── processed/           # Intermediate and cleaned data
├── reference/           # Reference files (taxonomies, lookup tables, etc.)
└── example/             # Small example datasets

notebooks/               # Quarto analysis notebooks

output/                  # Rendered reports and generated outputs

renv.lock                # Locked package versions
```

---

# Typical Workflow

1. Add raw data to `data/raw/`.
2. Create or update analysis notebooks in `notebooks/`.
3. Place reusable helper functions in `R/functions.R`.
4. Render notebooks with Quarto.
5. Save generated reports to `output/`.
6. Commit changes regularly with Git.

---

# Package Management

This project uses **renv** to provide reproducible package versions.

Restore packages:

```r
renv::restore()
```

Install a new package:

```r
install.packages("package_name")
```

Record the updated environment:

```r
renv::snapshot()
```

After adding or updating packages, commit the updated `renv.lock` file so collaborators can reproduce the same environment.
