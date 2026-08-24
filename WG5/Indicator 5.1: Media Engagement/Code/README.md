````markdown
# Indicator 5.1: Media Engagement with Health and Climate Change

This folder provides access to the analytical code used for **Indicator 5.1: Media Engagement with Health and Climate Change** in the **Lancet Countdown on Health and Climate Change 2026**.

## Code

The full analytical pipeline is implemented in Python and is publicly available on GitHub:

[https://github.com/project-c3ds/lancet-global-news-study](https://github.com/project-c3ds/lancet-global-news-study)

Please see the GitHub repository for the full code, analytical pipeline, dependencies, and detailed implementation instructions.

## Repository Structure

The analytical pipeline includes the following main components:

- **`collection/`** – article collection and data ingestion
- **`translations/`** – multilingual climate change and health keyword translations
- **`classification/`** – article classification and model validation
- **`estimation/`** – Bayesian hierarchical prevalence estimation
- **`analysis/`** – preparation of analysis datasets, statistical analyses, results, and figures

Each folder contains further documentation and instructions relevant to that stage of the analytical pipeline.

## Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/project-c3ds/lancet-global-news-study.git
   cd lancet-global-news-study
   ```

2. **Create a Python environment (recommended)**

   ```bash
   python3 -m venv venv
   ```

   **macOS / Linux:**

   ```bash
   source venv/bin/activate
   ```

   **Windows Command Prompt:**

   ```cmd
   venv\Scripts\activate
   ```

   **Windows PowerShell:**

   ```powershell
   venv\Scripts\Activate.ps1
   ```

3. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```

## Analytical Pipeline

The analytical pipeline includes code for:

- Collection of online news articles
- Multilingual climate change and health keyword translation
- Keyword-based article filtering
- Multilingual article classification
- Preparation of the master analysis dataset
- Bayesian hierarchical prevalence estimation
- Subgroup analyses by country, region, HDI, and climate zone
- Production of statistical results, tables, and figures

## Data and Reproducibility

The repository contains the scripts required to process the collected news data, classify articles, generate analysis datasets, estimate the indicator measures, and reproduce the analytical outputs.

Some upstream stages of the pipeline, particularly article collection and model training, require access to external services, API credentials, and computational resources.

Users interested primarily in reproducing the statistical analyses and figures should refer to the processed datasets and analysis scripts provided in the repository.

## Further Information

For detailed information on the methodology, data sources, article collection, classification pipeline, statistical analysis, and interpretation of the indicator, please refer to the associated **Methods** and **Data Sources** documentation.

For detailed code instructions, visit:

[**Lancet Global News Study GitHub Repository**](https://github.com/project-c3ds/lancet-global-news-study)
````
