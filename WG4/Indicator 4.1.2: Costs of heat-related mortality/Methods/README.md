# Methods

Premature heat-related death imposes substantial economic costs on societies through the loss of productive and healthy life years. Quantifying these costs is essential for calibrating the scale and urgency of climate adaptation investments and for comparing burdens across countries and income groups.

This indicator estimates the economic costs of heat-related mortality by monetising **years of life lost (YLL)** attributable to heat exposure, expressed relative to gross domestic product (GDP) and as absolute economic costs in constant 2025 USD.

## Heat-Related Mortality

Heat-related excess mortality is estimated using an **exposure–response function (ERF)** approach applied to daily maximum temperature gridded data (ERA5, 0.5° × 0.5°).

For each grid cell \(g\) and year \(t\), the attributable fraction (AF) of daily mortality attributable to heat above the minimum mortality temperature (MMT) is:

```math
AF_{g,t} = 1 - \exp\left[-\left(T_{g,t} - MMT_g\right)\times\beta_g\right]
```

**(1)**

where \(T_{g,t}\) is the daily maximum temperature, \(MMT_g\) is the minimum mortality temperature threshold, and \(\beta_g\) is the exposure–response slope (climate-zone-specific).

Daily AF values are summed over the year to give annual AF per grid cell.

Annual heat-related deaths in each age group \(a\) at grid cell \(g\) are then calculated as:

$$
Deaths_{a,g,t}
=
mort\_rate_{a,g}
\times
pop_{a,g,t}
\times
AF_{g,t}
\qquad (2)
$$

where \(mort\_rate_{a,g}\) is the age-specific all-cause mortality rate (GBD 2019; IHME; persons per person per day) and \(pop_{a,g,t}\) is the age-specific gridded population.

Twenty-one age groups are modelled; this indicator retains the eight groups aged **65 and older (65–69 through 100+)**.

Grid-level deaths are aggregated to country level using boundary masks.

## Years of Life Lost

YLL is calculated as the sum of heat-related excess deaths in each age group multiplied by the corresponding standard life expectancy at the age of death:

$$
YLL
=
\sum_{m=65-69}^{100+}
E_m \times LE_m
\qquad (3)
$$

where \(E_m\) is the annual heat-related excess deaths in age group \(m\) of a given country, and \(LE_m\) represents the standard life expectancy at the age of death for age group \(m\) (WHO life tables).

Three uncertainty estimates are propagated throughout (**mean, upper, and lower**), corresponding to daily maximum, minimum, and mean temperature scenarios.

## Monetisation of YLL

To monetise YLL, the **value of a statistical life-year (VSLY)** is applied.

VSLY is derived from the **value of a statistical life (VSL)** following the OECD 2025 mortality risk valuation framework:

$$
VSLY_{it}
=
\frac{VSL_{it}\times r}
{1-(1+r)^{-L}}
\qquad (4)
$$

where:

- \(r=0.03\) is the discount rate
- \(L=40\) years is the expected remaining life expectancy of the OECD reference population used in the original VSL meta-analysis

The OECD 2025 baseline VSL of **USD 7.1 million** is derived from studies of working-age populations (mean respondent age about 45 years; OECD life expectancy about 85 years), implying approximately 40 remaining life years.

This value is used solely to convert the VSL into an annualised VSLY via the annuity formula. At a 3% discount rate, 40 nominal years equal **23.1 discounted life-years**.

The resulting VSLY-to-GDP per capita ratio of **5.46**, derived from OECD 2025 reference values, is then applied to all YLL estimates irrespective of the age at death of the study cohort (here, adults aged 65 years and older).

Based on OECD 2025 reference values:

- \(VSL_{OECD}\) = USD 7.1 million (2022 prices)
- \(Y_{OECD}\) = USD 56,224 per capita

yielding:

$$
\frac{VSLY_{it}}{Y_{it}}
=
\frac{VSLY_{OECD}}{Y_{OECD}}
\qquad (5)
$$

The same ratio is applied to all countries and years **2000–2025**.

Country-specific VSLY values are obtained by multiplying the ratio by each country's annual GDP per capita (World Bank, `NY.GDP.PCAP.KD`, constant 2015 USD), converted to constant 2025 USD using a deflator of **1.18**.

## Monetised YLL Relative to GDP per Capita

Monetised YLL is expressed in two complementary forms.

First, monetised YLL relative to GDP per capita (\(R\)), equivalent to personal incomes:

$$
R_{it}
=
\frac{VSLY_{it}\times YLL_{it}}{Y_{it}}
=
\frac{VSLY_{OECD}}{Y_{OECD}}
\times
YLL_{it}
\qquad (6)
$$

## Monetised YLL as a Proportion of Total GDP

Second, monetised YLL is expressed as a proportion of total GDP (\(V\)), where \(P\) denotes total population:

$$
V_{it}
=
\frac{VSLY_{it}\times YLL_{it}}{GNI_{it}}
=
\frac{VSLY_{it}\times YLL_{it}}{Y_{it}\times P_{it}}
=
\frac{VSLY_{OECD}}{Y_{OECD}}
\times
\frac{YLL_{it}}{P_{it}}
\qquad (7)
$$

A total of **173 countries across six WHO regions** are included.

Population and GDP per capita are taken from the World Bank:

- `SP.POP.TOTL` — total population
- `NY.GDP.PCAP.KD` — GDP per capita

As 2025 World Bank data were not yet available, **2024 values were carried forward for 2025**.

Country-level results are aggregated by:

- WHO region
- HDI group
- Lancet Countdown region

---

## Data

- **Daily maximum temperature:** ERA5 reanalysis, 0.5° × 0.5°, Copernicus Climate Change Service (C3S), 2000–2025.
- **Age-specific all-cause mortality rates:** Global Burden of Disease Study 2019 (GBD 2019), IHME. 2019 rates are used as the baseline for all years.
- **Standard life expectancy by age group:** WHO life tables.
- **GDP per capita:** World Bank, `NY.GDP.PCAP.KD`, constant 2015 USD, downloaded April 2025. Converted to constant 2025 USD using a deflator of 1.18.
- **Population (total):** World Bank, `SP.POP.TOTL`, downloaded April 2025.
- **VSL reference:** OECD (2025), *Mortality Risk Valuation in Policy Assessment: A Global Meta-Analysis*, Table 6.1. OECD population-weighted base VSL = USD 7.1 million (2022 prices).
- **OECD GDP per capita reference:** OECD (2025), Annex G, Table AG.1, USD 56,224 (2022 prices).

---

## Caveats and Limitations

This indicator estimates heat-related mortality independently using the ERF approach (Eqs. 1–2). Results are therefore **not directly comparable with Indicator 1.1.5**, which uses a different methodological framework.

The analysis covers only adults aged **65 years and older**, likely underestimating the total economic burden.

Results are sensitive to the choice of discount rate, with analyses across different discount-rate assumptions spanning a wide range.

The assumption of a constant VSLY-to-GDP ratio across countries and years may not capture heterogeneity in preferences or welfare growth.

Application of OECD-derived parameters to non-OECD settings involves further uncertainty.

World Bank 2025 data were unavailable; therefore, **2024 values were used as proxies for 2025**.
