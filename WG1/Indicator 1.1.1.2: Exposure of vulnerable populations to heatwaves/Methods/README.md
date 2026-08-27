## Methods

### Heatwave Definition

Heatwave effects on human health are a growing concern worldwide, particularly for vulnerable populations such as **older adults and infants**. However, there is no universally accepted definition of a heatwave, and studies use different temperature thresholds, durations, and metrics to characterise these events.<sup>1</sup>

For this analysis, a **heatwave** was defined as a period of **three or more consecutive days** during which both the daily minimum and maximum temperatures exceeded the **95th percentile of the local climatology**.

This definition follows the approach used by the World Meteorological Organization (WMO) in *Heatwaves and Health: Guidance on Warning-System Development*.<sup>2</sup> The dual-threshold definition captures both:

- direct heat stress associated with high daytime temperatures; and
- physiological strain associated with insufficient nighttime cooling.<sup>3,4</sup>

Two climatological baseline periods were used:

- **1986–2005:** reference baseline period
- **2006–2015:** baseline aligned with the Paris Agreement period

### Temperature Data and Heatwave Calculation

Daily 2-metre air temperature data were obtained from the **European Centre for Medium-Range Weather Forecasts (ECMWF) ERA5-Land reanalysis dataset**, available at a global spatial resolution of **0.1° × 0.1°**.<sup>5</sup>

For each grid cell and each year from **1980 to 2025**, we calculated **heatwave duration**, defined as the total number of days per year occurring within a heatwave.

### Heatwave Exposure

Exposure to heatwaves among vulnerable populations was estimated by combining gridded heatwave occurrence data with gridded demographic datasets.

For each grid cell, annual heatwave exposure was calculated in **person-days** as:

```text
Heatwave exposure = Heatwave days × Population
```

where:

- **Heatwave days:** total number of heatwave days in the grid cell during the year
- **Population:** number of individuals from the relevant vulnerable population group residing in that grid cell

Total annual heatwave exposure for each vulnerable group was obtained by summing person-days across all grid cells.

We also calculated the **average number of heatwave days experienced per person** by dividing total person-days by the total population of the corresponding vulnerable group for that year.

### Decadal Average Exposure

Decadal average heatwave exposure was calculated by aggregating annual heatwave exposure counts across each decade and dividing by the cumulative population over the same period.

This approach avoids taking a simple arithmetic mean of annual exposure estimates, which would give equal weight to years with different population sizes.

### Vulnerable Population Groups

The analysis focused on two demographic groups that are particularly susceptible to heat-related health impacts.

#### Older adults (≥65 years)

Age-related reductions in thermoregulatory capacity, including reduced sweating, become increasingly important from approximately age 65.<sup>6</sup> In addition, the prevalence of underlying chronic conditions, including cardiovascular, renal, and respiratory diseases, increases with age and can further increase susceptibility to heat stress.<sup>7</sup>

#### Infants (<1 year)

Infants are particularly vulnerable to heat because of their high surface-area-to-mass ratio, which can be up to four times greater than that of adults, together with their limited behavioural ability to avoid or respond to excessive heat exposure.<sup>8</sup>

### Population Data

To construct a continuous annual time series of gridded population distributions from **1980 to 2025**, three demographic datasets were combined.

#### 1980–1999

We used the **Lancet Countdown 2023 population dataset**, derived from the ISIMIP Histsoc dataset and NASA GPWv4 land-area data.<sup>9</sup>

The original data were available at **0.25° × 0.25°** resolution and were regridded to match the **0.1° × 0.1° ERA5-Land grid**. Population counts were redistributed from the coarser grid to the finer grid while preserving total population and excluding ocean cells.

#### 2000–2014

We used global gridded demographic data from the **WorldPop project**, available at approximately **1 km × 1 km** resolution and generated using the top-down unconstrained approach.<sup>10</sup>

Age- and sex-specific population groups were aggregated and subsequently regridded to the ERA5-Land grid by summing population counts within each **0.1° × 0.1°** grid cell.

#### 2015–2025

For the most recent period, we used the **updated WorldPop dataset**.<sup>11</sup> Age-specific population estimates were aggregated to the ERA5-Land grid by summing population counts within each grid cell.

### Age-Group Aggregation

For **infants (<1 year)**, population counts corresponding to the 0–1-year age group were extracted from the respective demographic datasets.

For **older adults (≥65 years)**, population counts were calculated by summing the following age groups:

- 65–70 years
- 70–75 years
- 75–80 years
- 80+ years

---

## Data

- **Climate Data:** ECMWF ERA5-Land reanalysis dataset.

- **Demographic Data (1980–2000):** Hybrid gridded demographic dataset from the Lancet Countdown 2023 (0.25° resolution).<sup>9</sup>

- **Demographic Data (2000–2015):** WorldPop Age and Sex Structure Unconstrained Global Mosaic.<sup>10</sup>

- **Demographic Data (2015–2025):** WorldPop Age and Sex Structure Unconstrained Global Mosaic.<sup>11</sup>

---

## Caveats & Limitations

The ERA5-Land reanalysis dataset provides high-resolution temperature data suitable for heatwave analysis. However, reanalysis datasets may have biases compared with in-situ observations. These biases can affect the accuracy of heatwave detection and characterisation. Additionally, the spatial resolution of ERA5-Land (**0.1° × 0.1°**) may not capture microclimatic variations in urban areas, where heatwaves can be more intense due to the urban heat island effect.

The chosen heatwave definition (**three or more consecutive days with both minimum and maximum temperatures above the 95th percentile**) may not capture all relevant heatwave events and does not account for humidity or other environmental factors that influence heat stress.

To ensure consistency over time, data from multiple sources were integrated to capture both spatial and temporal demographic trends. However, validation of this integrated dataset is limited. In regions with sparse demographic data or shifting political boundaries, inconsistencies may arise in the spatial distribution of populations. For example, the division of Sudan is reflected in the dataset as missing or incomplete information for infant populations, illustrating the challenges of maintaining demographic continuity in dynamically changing regions.

WorldPop's **top-down unconstrained** approach was used for population mapping. This method estimates population distribution without restricting allocation to residential areas, unlike the **constrained** approach, which relies on satellite imagery to identify inhabited locations. While this method ensures continuous coverage across all land areas, it may overestimate populations in low-density regions and underestimate them in high-density areas.

## References

[1] WMO, WHO. Heatwaves and Health: Guidance on Warning-System Development. Geneva, 2015 https://www.who.int/publications/m/item/heatwaves-and-health--guidance-on-warning-system-development (accessed April 28, 2026).
[2]	Liu J, Qi J, Yin P, et al. Rising cause-specific mortality risk and burden of compound heatwaves amid climate change. Nat Clim Chang 2024; 14: 1201–9.
[3] 	Napoli C Di, Pappenberger F, Cloke HL, Napoli C Di, Pappenberger F, Cloke HL. Verification of Heat Stress Thresholds for a Health-Based Heat-Wave Definition. J Appl Meteorol Climatol 2019; 58: 1177–94.
[4]	Muñoz-Sabater J, Dutra E, Agustí-Panareda A, et al. ERA5-Land: A state-of-the-art global reanalysis dataset for land applications. Earth Syst Sci Data 2021; 13: 4349–83.
[5]	Kenney WL, Munce TA. Invited Review: Aging and human temperature regulation. J Appl Physiol 2003; 95: 2598–603.
[6]	Ebi KL, Capon A, Berry P, et al. C Hot weather and heat extremes: health risks. The Lancet 2021; 398: 698–708.
[7]	Bin Maideen MF, Jay O, Bongers C, Nanan R, Smallcombe JW. Optimal low-cost cooling strategies for infant strollers during hot weather. Ergonomics 2023; 66: 1935–49.
[8]	Romanello M, Napoli C di, Green C, et al. The 2023 report of the Lancet Countdown on health and climate change: the imperative for a health-centred response in a world facing irreversible harms. The Lancet 2023; 402: 2346–94.
[9]	WorldPop, Center for International Earth Science Information Network (CIESIN). Global High Resolution Population Denominators Project. 2018. DOI:10.5258/SOTON/WP00646.
[10]	Bondarenko M, Priyatikanto R, Tejedor-Garavito N, et al. The spatial distribution of population broken down by gender and age groupings in 2015-2030 at a resolution of 30 arc (approximately 1km at the equator) R2025A version v1. 2025. DOI:10.5258/SOTON/WP00846.
[11]	Tartarini F, Smallcombe JW, Lynch GP, Cross TJ, Broderick C, Jay O. The Sports Medicine Australia extreme heat risk and response guidelines and web tool. J Sci Med Sport 2025; 28: 690–9.
