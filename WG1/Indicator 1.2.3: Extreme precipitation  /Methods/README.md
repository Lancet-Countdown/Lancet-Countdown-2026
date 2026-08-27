## Methods

### Extreme Precipitation

This indicator monitors trends in **extreme precipitation across global land areas**. The methods were first described in detail in the 2024 Report appendix and were updated for the 2026 Report.

Drawing on gridded, high-resolution daily precipitation data from **ERA5-Land**, the Lancet Countdown's preferred reanalysis dataset, the indicator quantifies:

1. The percentage of global land area affected annually by at least one day of:
   - **extreme precipitation**, or
   - **very extreme precipitation**.

2. Changes in the most recent decadal average of these metrics compared with previous decades.

The analysis uses a longer, higher-resolution ERA5-Land time series from **1961 onwards** and focuses on extreme and very extreme precipitation events.

For the 2026 analysis, the indicator assesses:

- the share of global land area affected by at least one **extreme precipitation event**, defined as daily precipitation above the **99.945th percentile**;
- the share of global land area affected by at least one **very extreme precipitation event**, defined as daily precipitation above the **99.973rd percentile**; and
- changes in the average percentage of global land area affected between the prior decade (**2006–2015**) and the most recent decade (**2016–2025**).

Extreme precipitation is a major climate-related hazard with substantial direct and indirect health, economic, psychological, and environmental consequences. Monitoring changes in the land area exposed to extreme precipitation events over a multi-decadal time horizon therefore provides a globally relevant climate and health surveillance measure.

### Precipitation Data and Extreme Event Thresholds

The indicator is derived through a structured, multi-step data-processing workflow.

Hourly gridded precipitation data from **ERA5-Land (1961 onwards)** are used. ERA5-Land provides a globally consistent precipitation dataset at approximately **9 km horizontal resolution**.

End-of-day accumulation values for daily total precipitation are extracted to identify extreme and very extreme daily precipitation events.

Two grid-cell-specific thresholds are applied:

- **Extreme precipitation:** daily total precipitation exceeding the **99.945th percentile**, corresponding approximately to an event expected to occur once every **5 years** during the **1961–1990 reference period**.
- **Very extreme precipitation:** daily total precipitation exceeding the **99.973rd percentile**, corresponding approximately to an event expected to occur once every **10 years** during the **1961–1990 reference period**.

The empirical exceedance thresholds are calculated separately for each grid cell using the same **30-year climate reference period (1961–1990)**.

Because extreme rainfall can have cascading human health effects beyond its point of origin, the analysis covers **all global land areas**.

### Annual Land Area Affected

Annual rasters are accumulated to count the number of extreme and very extreme precipitation days in each grid cell.

Binary masks are then created to classify each global land grid cell as either:

- **affected**, if at least one qualifying extreme precipitation event occurred during the year; or
- **unaffected**, if no qualifying event occurred.

The percentage of global land area affected by extreme and very extreme precipitation is then calculated for each year.

The calculation accounts for **area distortions in the raster grid that vary by latitude**, ensuring that grid cells are appropriately weighted according to their actual land area.

### Decadal Changes

The analysis calculates the average share of global land area affected by extreme and very extreme precipitation during the following periods:

- **1996–2005**
- **2006–2015**
- **2016–2025**

The percentage change in the decadal average share of global land area affected by:

1. **extreme precipitation**, and
2. **very extreme precipitation**

is calculated between **2016–2025 and 2006–2015**.

The corresponding change between **2006–2015 and 1996–2005** is also calculated.

To assess whether changes in the share of global land area affected are **accelerating, decelerating, or remaining broadly stable**, the difference between the more recent interdecadal change and the earlier interdecadal change is compared with the earlier interdecadal change.

---

## Data

- **ERA5-Land reanalysis data:** Copernicus Climate Change Service (C3S) Climate Data Store (CDS).

---

## Caveats & Limitations

This indicator, like other indicators relying on ERA5-based precipitation data, has several limitations.

ERA5 precipitation products, including ERA5-Land, do not directly incorporate rain-gauge measurements. Instead, they rely on the European Centre for Medium-Range Weather Forecasts (ECMWF) Integrated Forecasting System to produce globally consistent reanalysis estimates.

Comparisons of ERA5 precipitation estimates with rain-gauge observations indicate that ERA5 can underestimate the magnitude of the highest daily precipitation totals. Performance also varies geographically, with generally better representation in extratropical than tropical regions. However, ERA5 captures broad spatial and temporal patterns in precipitation extremes.

Because this indicator uses ERA5-Land to monitor changes in extreme precipitation over a multi-decadal period, systematic biases are assumed to remain broadly consistent through time.

Such biases may influence grid-cell-specific exceedance thresholds and the estimated magnitude of precipitation events. However, they are less likely to substantially affect the identification of relative changes in the timing and spatial distribution of locally extreme precipitation events or changes in the percentage of global land area affected.

The indicator focuses on changes in **global land area affected** rather than direct population exposure or health impacts. Therefore, an increase in the percentage of land affected by extreme precipitation does not necessarily correspond directly to an equivalent increase in the number of people exposed or the magnitude of resulting health impacts.

ERA5-Land is used because it provides the spatial resolution, temporal continuity, and global coverage required for consistent long-term analysis.
