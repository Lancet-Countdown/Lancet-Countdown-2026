# Methods

This indicator is based geographically on climate and population data for **69,104 grid cells**, with boundaries located on degree and half-degree latitude and longitude circles. It focuses on trends since the end of the 20th century and estimates labour capacity loss, defined as the loss of opportunity to produce or earn because of heat exposure, at country level.

Historical climate data were obtained from the **European Centre for Medium-Range Weather Forecasts (ECMWF) ERA5 hourly reanalysis, single levels dataset**.

## Heat stress and work loss

For each year, the analysis used hourly:

- ambient air temperature (`t2m`)
- dew point temperature (`d2m`)
- short-wave solar radiation downward (`ssrd`), in W/m²

These hourly variables were used to calculate the **Wet Bulb Globe Temperature (WBGT)** heat stress index. Hourly work loss fractions (WLF) were then estimated for different metabolic rates and exposure conditions.

Three metabolic rates were considered:

- **200 W:** light work, such as sitting or moving slowly
- **300 W:** medium-intensity work
- **400 W:** heavy labour, such as shovelling

Two exposure situations were considered:

- work in the shade
- work in the sun

For indoor work, exposure was assumed to reflect atmospheric heat in the shade without effective air conditioning.

Light clothing was assumed. WBGT also depends on wind speed, particularly below 1 m/s. Movement of the arms and legs during work generates an apparent wind speed, which was assumed to be **1 m/s**.

A metabolic rate corresponding to the physical activity required in each employment sector was assigned as follows.

| Employment sector | Metabolic rate and exposure |
|---|---|
| Other, mainly services | 200 W, shade |
| Manufacturing | 300 W, shade |
| Agriculture and Construction | 400 W, sun |

## WBGT for outdoor work

For outdoor work, the additional heating effect of solar radiation was included.

The full **Liljegren formula** for calculating WBGT in the sun was applied for all grid cells for the year 2010. This required additional hourly ERA5 variables:

- surface pressure
- surface solar radiation downward
- total sky direct solar radiation at the surface

An approximation was then developed for the difference between WBGT in the sun and WBGT in the shade, referred to as the **WBGT uplift**.

In warm to hot Köppen climate regions, the uplift was estimated as:

```math
\text{WBGT uplift} = 0.0035 \times ssrd
```

This approximation matched the Liljegren WBGT in-sun calculation to approximately **±0.2°C**.

The in-sun values represent outdoor short-wave solar radiation under prevailing conditions, including the effect of cloud cover, rather than exposure to uninterrupted full sunlight.

## Work loss fraction

The **work loss fraction (WLF)** represents the fraction of potential work time lost because of heat exposure.

WLF was calculated for both shade and sun WBGT using a cumulative normal distribution function derived from epidemiological data. The mean and standard deviation varied according to metabolic rate.

| Metabolic rate | Mean | Standard deviation |
|---|---:|---:|
| 200 W | 35.5 | 3.9 |
| 300 W | 33.5 | 3.9 |
| 400 W | 32.5 | 4.2 |

## Annual work hours potentially lost per worker

For each grid cell, the six WLF estimates, representing three metabolic rates and two exposure conditions, were summed over **12 hours from 07:00 to 18:00 solar time** for every day of the year.

This produced estimates of **annual work hours potentially lost per worker (WHLpp)** for each metabolic rate and exposure condition.

For example, annual WHLpp for work at **200 W in the shade** was calculated as:

```math
(\mathrm{annual})WHLpp200Wshade_{cell}
=
\sum_{day=1}^{365}
\sum_{hour=07}^{18}
WLF200W_{cell,day,hour}
```

## Conversion from grid-cell to country estimates

Grid-cell annual values were converted to country-level estimates using population-based weighting.

The weighting factor was the estimated population belonging to each country and resident within each grid cell.

From 2020 onwards, the latest **World Bank country boundary shapefile** was intersected with the geographic boundaries of the 0.5° × 0.5° grid cells used in the analysis. This produced a shapefile containing grid cells and cell fragments labelled according to country.

The **GHS-POP Global Human Settlement Population dataset**, at a resolution of 30 arc seconds for the 2025 epoch, was overlaid on these boundaries to estimate the population within each grid cell or cell fragment belonging to each country.

Each country's mean annual potential work hours lost per employed person was calculated by dividing the population-weighted annual country WHLpp by the accumulated population of the country.

For example, countrywide work hours lost for **200 W work in the shade** were calculated as:

```math
(\mathrm{annual\ mean})WHLpp200Wshade_{country}
=
\frac{
\sum_{c=\mathrm{cells\ in\ country}}
\left(
Population_{country,c}
\times
(\mathrm{annual})WHLpp200Wshade_c
\right)
}{
\sum_{c=\mathrm{cells\ in\ country}}
Population_{country,c}
}
```

Cell fragments belonging to a country were treated as individual cells in this calculation.

## Employment data

Annual employment data were obtained from **ILOSTAT**.

For larger countries, employment data were interpolated between survey years to provide annual estimates. For many smaller countries, annual interpolation was not possible because only a small number of survey years were available.

To make use of these sparse data, three approaches were applied in order of preference:

1. **Linear interpolation** was used when available survey years were no more than seven years apart.

2. Where employment numbers for Agriculture, Construction, Manufacturing and Other sectors were available for at least two years, and total employment was available for several years, the proportion of total employment represented by each sector was calculated for the available survey years. These proportions were then applied to the more complete total employment series to estimate sector employment for additional years.

3. Where total employment was available only for the same limited years as sector-specific employment, the available sector values were applied across years and scaled according to changes in the population aged 15 years and older.

For years in which extrapolated country employment estimates were considered unreliable, this was noted in the data table.

## Calculation of country work hours lost

Annual work hours lost were first calculated separately for each employment sector according to its assigned metabolic rate and exposure condition.

For example:

- **Other, mainly services:** 200 W, shade
- **Manufacturing:** 300 W, shade
- **Agriculture and Construction:** 400 W, sun

Sector-specific work hours lost were then summed to estimate total annual work hours lost for each country.

# Data

The indicator uses the following data sources:

- **ECMWF ERA5 reanalysis:** historical hourly climate data
- **GHS-POP R2023A:** gridded global population data for the 2025 epoch
- **UN World Population Prospects 2024:** country population data
- **ILO Modelled Estimates, 2025 and 2026:** sector employment data
- **World Bank Official Boundaries:** country boundaries for 2020–2025

# Caveats and Limitations

1. Employment shares for Agriculture, Construction, Manufacturing and Other sectors are available only at country level. These country-level proportions are applied uniformly to all grid cells within a country. The analysis therefore does not capture differences in employment structure between locations within the same country.

2. ERA5 reanalysis data regularly underestimate maximum air temperatures. The difference between ERA5 and the ensemble average of several other data sources varies geographically but is generally around **1–4°C lower**, with particularly large differences in some coastal regions. Because populations are often concentrated near coasts, the resulting work-hour-loss estimates are likely to be conservative. When the same calculations are applied to weather-station data, estimated work hours lost increase by approximately **40%**.

3. The analysis includes only people formally employed in the sectors described above. It does not account for heat-related labour losses among people working informally or undertaking unpaid work to support themselves, their families or their communities.
