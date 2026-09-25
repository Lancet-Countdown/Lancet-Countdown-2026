# Methods

This indicator uses input data from **Indicator 3.2.1**, which provides estimates of deaths attributable to natural and anthropogenic ambient air pollution.

Years of life lost (YLLs) attributable to anthropogenic ambient air pollution were calculated for **140 individual countries** for each year from **2007 to 2022**.

Each country was classified by:

- Human Development Index (HDI) group
- WHO region
- Lancet Countdown (LC) grouping

For WHO region and Lancet Countdown group calculations, YLL estimates for an additional **43 countries** represented within three GAINS model “rest of world” regions were also included.

Some countries within these regions were excluded from the population and GDP calculations where the required data were unavailable.

The following geographic assignments were applied:

- The US Virgin Islands were included in the **WHO Region of the Americas**
- French Guiana was included in the **SIDS** Lancet Countdown group rather than South and Central America
- Belize was included in **South and Central America** rather than SIDS

The three GAINS regional groups could not be included in the HDI classification because the countries within each group have heterogeneous HDI classifications.

## Aggregation of years of life lost

YLLs were summed within each HDI group, WHO region and Lancet Countdown grouping.

The economic value of these YLLs was then estimated using the fixed ratio between the **Value of a Statistical Life Year (VSLY)** and GDP per capita derived in **Indicator 4.1.2**.

## Economic value relative to income

To estimate the economic value of YLLs relative to average annual income, total YLLs for each group or region were multiplied by the fixed VSLY-to-GDP-per-capita ratio.

## Economic value relative to GDP

To calculate the economic value of YLLs as a proportion of total GDP, the initial valuation was multiplied by the average GDP per capita of the relevant group or region.

Average GDP per capita was calculated as:

```math
\text{Average GDP per capita}
=
\frac{\sum \text{GDP}}{\sum \text{Population}}
```

GDP values were converted from current prices to **constant 2025 US dollars**.

The resulting economic value was then divided by the total GDP of the corresponding HDI group, WHO region or Lancet Countdown grouping.

## GDP and population data

GDP and GDP deflator data were obtained primarily from the **International Monetary Fund**.

Population data were obtained from the **United Nations World Population Prospects**.

These data were supplemented with World Bank GDP and population data for:

- Antigua and Barbuda
- Aruba
- Bahrain
- Barbados
- Brunei Darussalam
- Cayman Islands
- Cuba
- Curaçao
- Dominica
- Grenada
- Saint Lucia
- Malta
- Singapore
- Somalia
- Syrian Arab Republic
- US Virgin Islands
- West Bank and Gaza

The data and methods used to derive the fixed ratio between VSLY and GDP per capita are described under **Indicator 4.1.2**.

## GAINS “rest of world” regions

The following GAINS regional groups were included in calculations for WHO regions and Lancet Countdown groupings.

| GAINS region | WHO region | Lancet Countdown group | Countries |
|---|---|---|---|
| Caribbean (CARB) | Americas | SIDS | Anguilla*, Antigua and Barbuda, Aruba, Bahamas, Barbados, British Virgin Islands*, Caribbean Netherlands*, Cayman Islands, Cuba, Curaçao, Dominica, Dominican Republic, French Guiana*, Grenada, Guadeloupe*, Guyana, Haiti, Jamaica, Martinique*, Puerto Rico, Saint Lucia, Saint Vincent and the Grenadines, Suriname, Trinidad and Tobago, United States Virgin Islands |
| Central America (CEAM) | Americas | South and Central America | Belize, Costa Rica, Guatemala, Honduras, Nicaragua, Panama, El Salvador |
| Middle East (MIDE) | Eastern Mediterranean | Asia | United Arab Emirates, Bahrain, Iraq, Jordan, Kuwait, Lebanon, Oman, Occupied Palestinian Territory, Qatar, Syrian Arab Republic, Yemen |

\* Population and GDP were excluded from the calculations where one or both data sources were unavailable.

# Data

The indicator uses the following data sources:

- **Years of life lost due to anthropogenic ambient air pollution:** Indicator 3.2.1
- **Value of a Statistical Life Year:** Indicator 4.1.2
- **GDP and GDP deflators:** IMF World Economic Outlook
- **Population:** UN World Population Prospects
- **Supplementary GDP data:** World Bank

# Caveats and Limitations

Caveats relating to the calculation of reduced life expectancy and YLLs are described under **Indicator 3.2.1**.

Caveats relating to the calculation of the Value of a Statistical Life Year are described under **Indicator 4.1.2**.

Small countries that are not individually represented within the GAINS model are excluded from the analysis.

Some countries included within the GAINS regional groups contribute to the YLL totals but not to GDP and population calculations because the required economic or demographic data were unavailable. Most of these are small countries or territories, so the effect on regional estimates is expected to be limited.

The **Democratic People's Republic of Korea** is excluded because reliable GDP data are unavailable.

**Somalia** is included in the HDI analysis because an HDI classification is now available.

Values for earlier years may differ from those reported previously because underlying datasets have been updated.
