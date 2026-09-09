# Methods

The Joint Estimates of the World Health Organization (WHO) and the International Labour Organization (ILO) of the Work-related Burden of Disease and Injury (WHO/ILO Joint Estimates) are the official United Nations interagency estimates of occupational risk factors and their attributable burdens of disease. The estimates are produced at global, WHO regional, and country/area levels and, for health inequalities analyses, are disaggregated by sex and age group.

WHO and the ILO produced estimates of the proportion of the working-age population, defined as people aged ≥15 years, with any occupational exposure to solar ultraviolet radiation for 195 countries/areas for 2000, 2010, and 2019.

Occupational exposure to solar ultraviolet radiation was estimated using occupation as a proxy. A WHO/ILO joint job-exposure matrix assigns exposure according to whether occupations are judged to involve outdoor work.

All occupation codes from the International Standard Classification of Occupations 2008 (ISCO-08), and equivalent codes from the International Standard Classification of Occupations 1988 (ISCO-88), were assigned to one of two exposure categories:

- **Any or high occupational exposure to solar ultraviolet radiation:** outdoor workers
- **No or low occupational exposure to solar ultraviolet radiation:** indoor workers

## Estimation of occupational exposure

WHO and the ILO applied standard multilevel models to estimate the proportion of the population with any occupational exposure to solar ultraviolet radiation, or the proportion of outdoor workers, for each estimation year.

More than **166 million observations** on self-reported occupation were obtained from **763 official Labour Force Surveys** collected and reported to WHO and/or the ILO by national or area statistical offices in **96 countries/areas** between 1 January 1996 and 31 December 2021.

These data covered approximately:

- **49.2%** of all countries/areas with at least one survey
- **35.9%** of the total working-age population

Across WHO regions, input data from at least one survey covered more than one third of countries/areas (**38.0%**) and almost one third of the working-age population (**30.7%**). Coverage was considerably lower in the WHO Western Pacific Region, where approximately **6.0%** of the regional population was represented by input data.

## Estimation for 2000–2025

For each population cohort defined by sex and age group, the WHO/ILO Joint Estimates of the point prevalence of occupational exposure to solar ultraviolet radiation were extracted for **2000, 2010, and 2019**.

The point prevalence of exposure, or proportion of outdoor workers, was then estimated for each year from **2000 to 2025** using the `FORECAST.LINEAR` function in Microsoft Excel.

This function applies linear regression to identify the best-fit line through the available estimates for 2000, 2010, and 2019 and uses this relationship to estimate values across 2000–2025.

## Number of outdoor workers

For each population cohort, the estimated proportion of outdoor workers was multiplied by the corresponding total population for that year.

Population estimates were obtained from the **2024 Revision of the UN World Population Prospects**, using:

- official population estimates for **2000–2023**
- population projections for **2024–2025**

This produced an estimate of the number of working-age people who were outdoor workers in each year.

Estimates for countries with any extreme value in any estimation year, defined as **<10.0% or >90.0% of working-age people estimated to be outdoor workers**, were excluded. These countries do not contribute to global or other grouped estimates.

The following 14 countries were excluded:

- Cyprus
- Ireland
- Iran (Islamic Republic of)
- Kiribati
- Lao People's Democratic Republic
- Liberia
- Luxembourg
- Mexico
- Montenegro
- Nigeria
- Senegal
- Sudan
- Togo
- United Arab Emirates

## Geographic and demographic aggregation

The indicator provides estimates of both the **proportion** and **number of outdoor workers** for:

- the world
- six WHO regions
- seven Lancet Countdown regions
- 181 countries/areas

Estimates are disaggregated by sex using three categories:

- females and males
- females
- males

Estimates are also disaggregated by age for the population aged ≥15 years and for 16 five-year age groups:

- 15–19
- 20–24
- 25–29
- 30–34
- 35–39
- 40–44
- 45–49
- 50–54
- 55–59
- 60–64
- 65–69
- 70–74
- 75–79
- 80–84
- 85–89
- 90–94
- ≥95 years

For aggregate groups, the number of outdoor workers was calculated by summing the number of outdoor workers across the relevant population cohorts. The corresponding proportion was calculated by dividing this total by the total population of the aggregate group.

## Countries/areas included

### African Region (43)

Algeria; Angola; Benin; Botswana; Burkina Faso; Burundi; Cabo Verde; Cameroon; Central African Republic; Chad; Comoros; Congo; Côte d’Ivoire; Democratic Republic of the Congo; Equatorial Guinea; Eritrea; Eswatini; Ethiopia; Gabon; Gambia; Ghana; Guinea; Guinea-Bissau; Kenya; Lesotho; Madagascar; Malawi; Mali; Mauritania; Mauritius; Mozambique; Namibia; Niger; Rwanda; Sao Tome and Principe; Seychelles; Sierra Leone; South Africa; South Sudan; Uganda; United Republic of Tanzania; Zambia; and Zimbabwe.

### Region of the Americas (34)

Antigua and Barbuda; Argentina; Bahamas; Barbados; Belize; Bolivia (Plurinational State of); Brazil; Canada; Chile; Colombia; Costa Rica; Cuba; Dominica; Dominican Republic; Ecuador; El Salvador; Grenada; Guatemala; Guyana; Haiti; Honduras; Jamaica; Nicaragua; Panama; Paraguay; Peru; Saint Kitts and Nevis; Saint Lucia; Saint Vincent and the Grenadines; Suriname; Trinidad and Tobago; United States of America; Uruguay; and Venezuela (Bolivarian Republic of).

### Eastern Mediterranean Region (19)

Afghanistan; Bahrain; Djibouti; Egypt; Iraq; Jordan; Kuwait; Lebanon; Libya; Morocco; occupied Palestinian territory, including east Jerusalem; Oman; Pakistan; Qatar; Saudi Arabia; Somalia; Syrian Arab Republic; Tunisia; and Yemen.

### European Region (49)

Albania; Andorra; Armenia; Austria; Azerbaijan; Belarus; Belgium; Bosnia and Herzegovina; Bulgaria; Croatia; Czechia; Denmark; Estonia; Finland; France; Georgia; Germany; Greece; Hungary; Iceland; Israel; Italy; Kazakhstan; Kyrgyzstan; Latvia; Lithuania; Malta; Monaco; Netherlands; North Macedonia; Norway; Poland; Portugal; Republic of Moldova; Romania; Russian Federation; San Marino; Serbia; Slovakia; Slovenia; Spain; Sweden; Switzerland; Tajikistan; Türkiye; Turkmenistan; Ukraine; United Kingdom; and Uzbekistan.

### South-East Asia Region (10)

Bangladesh; Bhutan; Democratic People’s Republic of Korea; India; Maldives; Myanmar; Nepal; Sri Lanka; Thailand; and Timor-Leste.

### Western Pacific Region (26)

Australia; Brunei Darussalam; Cambodia; China; Cook Islands; Fiji; Indonesia; Japan; Malaysia; Marshall Islands; Micronesia (Federated States of); Mongolia; Nauru; New Zealand; Niue; Palau; Papua New Guinea; Philippines; Republic of Korea; Samoa; Singapore; Solomon Islands; Tonga; Tuvalu; Vanuatu; and Viet Nam.

# Data

The indicator uses the following data sources:

- **WHO/ILO Joint Estimates** of the working-age population with any occupational exposure to solar ultraviolet radiation.
- **UN World Population Prospects 2024 Revision:** estimates of the total working-age population for 2000–2023.
- **UN World Population Prospects 2024 Revision:** projections of the total working-age population for 2024 and 2025 under the medium scenario.

# Caveats and Limitations

The percentage and number of outdoor workers for 2000–2025 were estimated assuming a **linear trend over time**. In practice, these variables may change non-linearly. Applying a linear function may therefore generate extreme estimates, particularly where country-level input data are sparse.

Estimation of occupational and other risk-factor exposures commonly assumes linear trends over time, and this approach therefore reflects common scientific practice.

Workers in the formal economy were captured by all Labour Force Surveys used to produce the WHO/ILO Joint Estimates. However, only some surveys also captured workers in the informal economy, such as South Africa's Quarterly Labour Force Surveys.

The resulting estimates are therefore representative of both formal and informal economy workers only in countries where workers from both sectors were included in the surveys used for estimation.
