
## Indicator Information

- **Indicator Number:** 3.5  
- **Indicator Name:** Healthcare Sector Emissions  
- **Working Group:** WG3  

## Authors

**Matthew J. Eckelman, PhD**  
Professor and Associate Chair of Faculty  
Department of Civil & Environmental Engineering  
Northeastern University  
🔗 https://coe.northeastern.edu/people/eckelman-matthew/  
✉️ m.eckelman@northeastern.edu  

**Jodi Sherman, MD**  
Associate Professor of Anesthesiology and Epidemiology (Environmental Health Sciences)  
Yale School of Medicine, Yale University  
🔗 https://medicine.yale.edu/profile/jodi-sherman/  
✉️ jodi.sherman@yale.edu  

## Brief description of the indicator

This indicator quantifies healthcare sector emissions of GHGs, ozone and PM2.5 using a top-down spend-based method employing the environmentally-extended multi-region input-output (EE-MRIO) model EXIOBASE and health expenditure data, alongside epidemiological models of air pollution-related health damages. For the first time, it also estimates emissions by GHG Protocol Scope 1 (direct on-site emissions); Scope 2 (purchased energy); and Scope 3 (value chain). It matches per-capita greenhouse gas emissions data with the United Nations Development Programme Human Development Index to report healthcare-associated greenhouse gas emissions per capita per year, including direct emissions from healthcare facilities as well as emissions from the consumption of goods and services supplied by other sectors ( 🔗https://lancetcountdown.org/explore-our-data/).

## Data Sources
1. Environmentally extended multi-region input-output tables: EXIOBASE v3.9.4 model for year 2021.
2. Consumer Price Indices from the World Bank
3. Life Expectancy at Birth from the World Health Organization Global Health Observatory; the latest reporting year is 2021.
4. Per capita health expenditure data is from the World Health Organization’s Global Health Expenditure Database; the latest reporting year is 2021.
5. UN Sustainable Development Goal Indicator 3.8.1 Coverage of Essential Health Services from the World Health Organization’s Global Health Observatory; the latest reporting year is 2021.

## Code
The Python notebook emissions_calcs_updates_3_9_6.ipynb performs consumption-based greenhouse gas emissions calculations using input–output analysis.

## Caveats
As only total health expenditure data are available from WHO, all expenditures are assigned to Final Demand, with no separation for investment. MRIO models are built from aggregated top-down statistical data. Results do not reflect individual health care systems’ power purchase agreements for renewable energy or any offsetting activities. Results do not include direct emissions of waste anaesthetic gases from clinical operations nor emissions from metered dose inhalers, as these are not currently reported consistently in national emissions inventories.


## Acknowledgements

The authors are very grateful to **Kaixin Huang** and **Melanie Marino** for their contributions to code development.

