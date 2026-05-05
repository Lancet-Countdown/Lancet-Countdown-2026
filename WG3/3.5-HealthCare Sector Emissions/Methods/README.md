## Methodology

This project estimates healthcare-associated greenhouse gas (GHG) emissions per capita per year, including both:

- Direct emissions from healthcare facilities  
- Indirect emissions from goods and services supplied by other sectors  

Healthcare expenditures from the WHO Global Health Expenditure Database (GHED) are mapped to the *Health and Social Work* sector within an environmentally extended multi-regional input–output (EE-MRIO) model. Consumption-based emissions are calculated using the standard Leontief inverse approach.

---

## Data and Modeling Approach

Previous analyses (2019–2022) used the WIOD MRIO model; however, due to outdated emissions satellite accounts, this project uses the EXIOBASE EE-MRIO model (v3.9.4), which provides data up to 2020 with nowcasting for 2021–2022.

Due to distortions in nowcasted 2022 data (likely driven by COVID-19-related economic changes), the following approach is used:

- 2021 EXIOBASE tables are used as the base year  
- 2022 healthcare expenditures are deflated to 2021 values  
- Emissions intensities are adjusted using PRIMAP-hist (v2.6.1) national emissions data  

This approach aligns with EXIOBASE guidance regarding the limitations of nowcasted data.

---

## Emissions Calculation

- Emissions are calculated in CO₂-equivalents using characterized emissions intensities from EXIOBASE  
- Results are expressed per capita and per year  
- Currency conversions are applied from USD to EUR using WHO exchange rates (1 USD = 0.8455 EUR for 2021)  

---

## Additional Impact Metrics

In addition to GHG emissions, health impacts are estimated using EXIOBASE endpoint damage factors:

- PM₂.₅ and ozone precursor emissions  
- Impacts measured in disability-adjusted life years (DALYs)  

---

## Implementation

All EE-MRIO modeling and calculations are performed in Python using the `pymrio` library.
---
## Contact
For further details regarding the methodology or data, please contact the indicator authors.
