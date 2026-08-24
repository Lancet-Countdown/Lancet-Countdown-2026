# Methods

Bayesian hierarchical models were developed to estimate annual average household air pollution particulate matter (**HAP-PM2.5**) indoor concentrations, including both outdoor and indoor sources, from **2016 to 2023**.

Model variables were selected from sample data in **282 peer-reviewed studies** drawn and updated from the WHO Global HAP dataset.

The PM2.5 exposure coefficients from the developed model were applied to countries with unknown household air pollution to predict HAP-PM2.5 exposure globally, with indoor concentrations estimated for **65 countries**.

Attributable mortality rates per 100,000 population were estimated using a **comparative risk assessment (CRA)** approach.

Using weighted averages, national-level 24-hour average HAP-PM2.5 exposure due to polluting and clean fuels, and the related death rate per 100,000 population, were estimated (Mohajeri et al., 2023).

---

## Updates Introduced in 2026

The HAP-PM2.5 indicator was substantially updated this year to reflect several time-varying variables related to household air pollution (HAP) and associated mortality rates.

### Urban and Rural Population

Given the rapid growth of the global urban population, particularly in Asia and Africa, the HAP indicator was updated separately for **urban and rural populations**, both in terms of household air pollution exposure and related mortality rates.

Population data were obtained from the **Global Human Settlement Layer (GHSL)** at **1 km grid resolution**, available from 1975 to 2030 at 5-year intervals.

Data were collected for **2015 and 2020** and separated into urban and rural populations using the polygon layer from the **Global Rural-Urban Mapping Project (GRUMP v1.1)**.

Population was classified as urban where it was located inside a polygon with a population density of **>1,000 people/km²**, with the remaining population classified as rural.

### Polluting Fuel Use

The proportion of people using dirty fuel as their primary fuel, including:

- Biomass
- Charcoal
- Coal

was obtained for each country and separately for urban and rural settings from WHO for **2016–2023**.

### Stove Technology

Stove technologies used for cooking continue to evolve, with a strong emphasis on improving energy efficiency and reducing household air pollution through enhanced combustion performance.

Data on both traditional and improved cookstoves were obtained from the **Greenhouse Gas and Air Pollution Interactions and Synergies (GAINS) model** for **2016–2023**.

Improved cookstoves are designed to replace traditional open fires; they are more fuel-efficient and emit substantially lower levels of pollutants.

### Human Development Index

The HAP indicator was also updated based on the **Human Development Index (HDI)** for **2023**.

### HAP-PM2.5 Mortality

HAP-PM2.5 mortality rates for urban and rural settings were estimated based on exposure–response functions for attributable premature mortality and updated for **2016–2023**.

---

## Data

- **Final energy use for each fuel type:** IIASA GAINS model
- **Fuel type:** IIASA GAINS model via IEA
- **Urban-rural population at country level:** Global Human Settlement Layer (GHSL)
- **Stove type:** IIASA GAINS model
- **Percentage of fuel use, 2016–2023:** WHO data
- **Percentage of stove technology, 2016–2023:** IIASA GAINS model
- **HDI:** Lancet Countdown data, 2023
- **Baseline mortality rates:** GBD national estimates for males and females
- **Exposure-response functions for attributable premature mortality:** MR-BRTs, cause- and age-specific, for six diseases

---

## Caveats and Limitations

The indicator provides useful information on variation in PM2.5 exposure from household indoor concentrations (µg/m³) for different fuel use, stove technologies, and urban/rural locations, as well as their associated health impacts.

Indoor air pollution is complex and is affected by several factors described above, as well as by **housing characteristics**.

Housing characteristics, such as:

- Ventilation rate
- Kitchen location
- Presence of a window in the kitchen
- Roofing materials

are not typically captured consistently across the monitored data.

Updating the sample data with information on these and related factors should improve future predictions of household air pollution.

Another challenge relates to the availability and consistency of measured or monitored household air pollution data, including studies incorporated in the WHO database.

In particular, there is a limited amount of data because of the scarcity of country-level monitoring studies in several regions, including parts of Europe, as well as the small number of households sampled within individual studies.

As a result, the analysis is restricted to **65 countries**.

In addition, substantial heterogeneity exists across studies:

- Different monitoring technologies are used
- Data are collected over varying measurement periods
- Different analytical methods are applied during data processing

Despite these limitations, the Bayesian predictive models developed in this study enable examination of a broad range of indoor PM2.5 concentrations while accounting for variations in fuel use, stove types, and differences between urban and rural settings worldwide.

Another challenge relates to the estimation of health impacts.

More specifically, the overlap between ambient PM2.5 and household PM2.5 exposures may result in **double counting of attributable mortality**.

Developing an appropriate method to estimate the contribution of ambient air pollution to indoor concentrations could help address this limitation.
