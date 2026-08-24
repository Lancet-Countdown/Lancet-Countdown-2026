# Methods

This indicator contains five components:

- **A. Proportion of households with air conditioning** for the world, by HDI level, by Lancet Countdown region, and by WHO region (2000–2024)
- **B. CO₂ emissions directly attributable to air conditioning use** (2000–2024)
- **C. Percentage of energy consumption used for cooling** (2000–2024)
- **D. Percentage of building-related CO₂ emissions from air conditioning** (2000–2024)
- **E. Heat-related deaths averted by air conditioning globally** from 2006 to 2023

Data for Components A, B, and C were provided directly by the International Energy Agency, with calculations for Components C and D also requiring public data from IEA.

Component E was calculated based on Component A and data on heat-related mortality from Indicator 1.1.5.

The methods for Components C and D are new to this report, but those for Component E are mostly reproduced from the 2025 report, reflecting only minor changes.

---

## Component A. Proportion of Households with Air Conditioning for the World, by HDI Level, by Lancet Countdown Region, and by WHO Region

Data were provided directly by the **International Energy Agency (IEA)**.

---

## Component B. CO₂ Emissions Directly Attributable to Air Conditioning Use

Data were provided directly by the **International Energy Agency (IEA)**.

---

## Component C. Percentage of Energy Consumption Used for Air Conditioning

This percentage was calculated by dividing the energy used for air conditioning, provided directly by the IEA, by the total annual electricity consumed globally, publicly available (see Data section below).

---

## Component D. Percentage of Building-Related CO₂ Emissions from Air Conditioning

This percentage was calculated by dividing the CO₂ emissions generated from air conditioning (Component B) by the global CO₂ emissions related to buildings, publicly available (see Data section below).

---

## Component E. Heat-Related Deaths Averted by Air Conditioning

Averted heat-related deaths due to air conditioning were calculated by combining three pieces of information:

1. Total heat-related mortality by country from Indicator 1.1.5 (\(D_o\) in equations below)
2. The proportion of country or country group using air conditioning (\(P_{ac}\))
3. The relative risk of heat-related mortality when using air conditioning (\(RR_{ac}\))

To calculate averted heat-related mortality, we employ the general concept of the **prevented fraction**, which is the percent reduction in an adverse health outcome (in this case, heat-related mortality) due to a preventive exposure (i.e., air conditioning), compared with the counterfactual scenario of complete absence of the exposure (i.e., no air conditioning).

The relative risk of heat-related mortality with air conditioning, \(RR_{ac}\), was estimated using the results of a meta-analysis conducted for the 2020 global Lancet Countdown report.

Briefly, a literature search was conducted for non-ecologic, analytical epidemiologic studies that examined the relationship between availability of household air conditioning and heat-related mortality and identified nine eligible studies.

In a random-effects meta-analysis, \(RR_{ac}\) was calculated to be **0.24 (95% confidence interval: 0.15, 0.39)**, which was used to calculate the prevented fraction.

### Prevented Fraction

The formula for prevented fraction (PF) is:

$$
PF = P_{ac}(1-RR_{ac})
$$

Using \(RR_{ac}=0.24\):

$$
PF = P_{ac}(1-0.24)
$$

$$
PF = P_{ac}(0.76)
$$

The prevented fraction could range from **0%** for a country or region with no household air conditioning (\(P_{ac}=0\)) to **76%** for a country or region in which every household has air conditioning (\(P_{ac}=1.0\)).

### Expected Heat-Related Deaths Without Air Conditioning

The number of heat-related deaths that would be expected in the complete absence of household air conditioning (\(D_e\)) was estimated as:

$$
D_e = \frac{D_o}{1-PF}
$$

### Heat-Related Deaths Averted

Finally, the number of heat-related deaths averted due to the presence of household air conditioning (\(D_a\)) was estimated as:

$$
D_a = D_e-D_o
$$

To calculate the 95% confidence intervals for \(D_a\), the uncertainty in \(RR_{ac}\) was accounted for using the delta method.

\(D_o\) and \(D_a\) were calculated for each of the 12 countries and 14 country groups in IEA's data (Table 29), then \(D_a\) values were summed globally.

Because of nonlinear relationships between \(D_a\), \(P_{ac}\), and \(D_o\), calculating \(D_a\) for WHO, HDI, or Lancet Countdown country groupings using their population-weighted average \(P_{ac}\) values would result in inaccurate estimates due to heterogeneous \(P_{ac}\) values among their constituent countries.

Therefore, we calculated \(D_a\) for the most granular country groupings available from the IEA, which are generally comprised of countries with similar climates and income levels.

---

## Table 29. IEA-Defined Regions

The 14 IEA-defined regions do not include 12 major countries (**Canada, Brazil, China, India, Indonesia, Japan, Mexico, Republic of Korea, Russian Federation, South Africa, United Kingdom, United States**) for which country-level data were provided.

Countries shown in **bold** were not included in averted heat mortality calculations because they were not included in Indicator 1.1.5.

| IEA-defined region | Countries |
|---|---|
| **Central and South America A** | Chile, Colombia, Costa Rica |
| **Central and South America C** | Bolivarian Republic of Venezuela, Cuba, **Curaçao**, Dominican Republic, Ecuador, El Salvador, Guatemala, Guyana, Haiti, Honduras, Jamaica, Nicaragua, Panama, Paraguay, Peru, Plurinational State of Bolivia, Suriname, Trinidad and Tobago, Uruguay, Other Latin America and the Caribbean, **Anguilla**, Antigua and Barbuda, **Aruba**, Bahamas, Barbados, Belize, **Bermuda**, **Bonaire**, **Sint Eustatius and Saba**, **British Virgin Islands**, **Cayman Islands**, **Dominica**, **Falkland Islands (Malvinas)**, Grenada, **Montserrat**, **Saint Kitts and Nevis**, Saint Lucia, **Saint Pierre and Miquelon**, Saint Vincent and the Grenadines, **Sint Maarten (Dutch part)**, **Turks and Caicos Islands** |
| **Other Europe A** | Iceland, Israel, Norway, Switzerland, Turkey |
| **Other Europe B** | Albania, Belarus, Bosnia and Herzegovina, **Gibraltar**, **Republic of Kosovo**, North Macedonia, Republic of Moldova, Montenegro, Serbia, Ukraine |
| **European Union A** | France, Germany, Italy |
| **European Union B** | Austria, Belgium, Czech Republic, Denmark, Estonia, Finland, Greece, Hungary, Ireland, Latvia, Lithuania, Luxembourg, Netherlands, Poland, Portugal, **Slovak Republic**, Slovenia, Spain, Sweden |
| **European Union C** | Bulgaria, Croatia, Cyprus, Malta, Romania |
| **North Africa** | Algeria, Egypt, Libya, Morocco, Tunisia |
| **Other Africa** | Angola, Benin, Botswana, Cameroon, Côte d'Ivoire, Democratic Republic of Congo, Equatorial Guinea, Eritrea, Ethiopia, Gabon, Ghana, Kenya, Kingdom of Eswatini, Madagascar, Mauritius, Mozambique, Namibia, Niger, Nigeria, Republic of Congo, Rwanda, Senegal, South Sudan, Sudan, Togo, Uganda, United Republic of Tanzania, Zambia, Zimbabwe, Other Africa, Burkina Faso, Burundi, Cape Verde, Central African Republic, Chad, Comoros, Djibouti, Gambia, Guinea, Guinea-Bissau, Lesotho, Liberia, Malawi, Mali, Mauritania, Sao Tome and Principe, Seychelles, Sierra Leone, Somalia |
| **Middle East** | Bahrain, Islamic Republic of Iran, Iraq, Jordan, Kuwait, Lebanon, Oman, Qatar, Saudi Arabia, Syrian Arab Republic, United Arab Emirates, Yemen |
| **Caspian** | Armenia, Azerbaijan, Georgia, Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan |
| **Australia and New Zealand** | Australia, New Zealand |
| **Association of Southeast Asian Nations (ASEAN) countries** | Brunei Darussalam, Cambodia, Lao People's Democratic Republic, Malaysia, Myanmar, Philippines, Singapore, Thailand, Viet Nam |
| **Other Asia** | Bangladesh, Democratic People’s Republic of Korea, Mongolia, Nepal, Pakistan, Sri Lanka, **Chinese Taipei**, Other Asia, Afghanistan, Bhutan, **Cook Islands**, **East Timor**, Fiji, **French Polynesia**, **Kiribati**, **Macau**, **Maldives**, **New Caledonia**, **Palau**, Papua New Guinea, Samoa, Solomon Islands, Timor‐Leste, **Tonga**, Vanuatu |


## Data

- **Proportion of households with air conditioning (used in Indicator Components A and E):**  
  Data on the proportion of households with air conditioning for each country grouping were provided directly by the International Energy Agency (IEA).

  Additionally, IEA provided data for 12 individual major countries:

  - Canada
  - Brazil
  - China
  - India
  - Indonesia
  - Japan
  - Mexico
  - Republic of Korea
  - Russian Federation
  - South Africa
  - United Kingdom
  - United States

  IEA also provided data for 14 regions for use in the calculations of heat-related deaths averted due to air conditioning. IEA country groups are shown in Table 29.

  Data by IEA country category and for individual countries were provided only for restricted (non-public) use.

- **Greenhouse gases generated due to air conditioning (Indicator Component B):**  
  Data on the greenhouse gases associated with air conditioning of residential and non-residential spaces were also provided by the IEA at the global level.

- **Global electricity consumption (used in Indicator Component C):**  
  Global estimates of total electricity consumption for **1990–2024** were used to calculate the percentage of electricity consumption used for air conditioning.

  Sources:
  - IEA, 2025a (2000–2023)
  - IEA, 2025b (2024)

- **Global building-related CO₂ emissions (used in Indicator Component D):**  
  Global estimates of combined direct and indirect CO₂ emissions from buildings for **2000–2024** were publicly available from the IEA.

  Sources:
  - IEA, 2020 (2000–2019)
  - IEA, 2023 (2020–2022)
  - IEA, 2025c (2023–2024)

- **Heat-related mortality data (used in Indicator Component E):**  
  Heat-related mortality data were provided by the authors of Indicator 1.1.5 for each country from **2006 to 2023**.

---

## Caveats and Limitations

There were a number of limitations to the estimate of the number of heat-related deaths averted by air conditioning. Therefore, this should be considered a **ballpark estimate** that will require considerable refinement in future years.

### A. Uncertainty in the Relative Risk Estimate

The prevented fraction calculation was based on a pooled \(RR_{ac}\) of **0.24** from a meta-analysis that included nine studies.

These studies were all from developed nations in:

- North America
- Europe
- Australia

and typically focused on the effects of heat waves.

Four of the studies analysed effects in the general population, while five specifically examined risks among elderly groups.

Because of these study characteristics, \(RR_{ac}\) may carry larger uncertainties, particularly in middle- or lower-income parts of the world.

Likewise, because heat-related mortality from Indicator 1.1.5 calculates risk based on heat exceeding optimal temperatures, mortality risks during heat waves may differ.

To partially address these considerations and incorporate greater uncertainty into the analysis, a **random-effects meta-analysis** was conducted. This assumes heterogeneity among studies and produces a wider 95% confidence interval than a fixed-effects meta-analysis.

However, studies examining the relationship between availability of household air conditioning and heat-related mortality are sparse. It is therefore not currently possible to derive age- or region-specific estimates of \(RR_{ac}\).

### B. Potential Confounding

Because the meta-analysis is based on observational studies, it is possible that the \(RR_{ac}\) estimate was affected by confounding in some or all of the nine studies included in the meta-analysis.

For example, having household air conditioning may be associated with other characteristics that reduce heat-related mortality, such as:

- Better baseline health status
- Not living alone

Some or all of the included studies may not have fully adjusted for these factors.

### C. Household Air Conditioning Availability and Use

The estimate of the proportion of households with air conditioning does not account for:

- Differences in household size between households with and without air conditioning
- Differences in vulnerability to heat stress among people living in households with and without air conditioning

In addition, the presence of air conditioning in a household does not guarantee that it is actually used.

### D. Spatial Resolution of Air Conditioning Data

When estimating the number of heat-related deaths prevented by air conditioning, finer spatial resolution produces more accurate estimates.

Data on the proportion of the population with household air conditioning were occasionally available at the country level for large countries, but were more commonly available at the regional level, as shown in Table 29.

It was therefore necessary to assume that the proportion of the population with household air conditioning was homogeneous within each country or region.

This assumption may not be accurate, particularly for large and heterogeneous countries or regions with substantial differences in:

- Income
- Climate
- Air conditioning access
