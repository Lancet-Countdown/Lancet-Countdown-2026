# Terrestrial Water Storage

## Methods

### Overview

A set of water-storage indicators was derived from **GRACE (Gravity Recovery and Climate Experiment)** satellite observations.

The analysis includes two main measures:

1. **Theil–Sen trend in Total Terrestrial Water Storage (TWS)** for January 2003–December 2025.
2. **Standardised Terrestrial Water Storage Index (STWSI)** for identifying unusually dry and wet water-storage conditions.

### GRACE Terrestrial Water Storage Data

The GRACE and GRACE Follow-On (GRACE-FO) satellite missions provide near-global observations of changes in terrestrial water storage.

The **GRACE/GRACE-FO mascon dataset from the Center for Space Research (CSR)** was used for this analysis.

Total terrestrial water storage anomaly (**ΔTWS**) represents changes in the combined amount of water stored on and below the land surface, including:

- Soil moisture
- Surface water in rivers, lakes, and wetlands
- Groundwater
- Snow
- Ice

GRACE provides monthly observations of large-scale changes in terrestrial water storage, with groundwater often representing a substantial component of the observed variation.

### Preparation of the Monthly Time Series

A continuous monthly time series covering **January 2003 to December 2025** was constructed from the GRACE and GRACE-FO observations.

Missing observations were handled as follows:

- **Short gaps of fewer than three consecutive months** were filled using linear interpolation.
- The longer gap between the GRACE and GRACE-FO missions, from **July 2017 to May 2018**, was reconstructed using a mean TWS climatology derived from the overlapping **January 2015–December 2020** period.

This procedure was used to maintain temporal consistency across the full time series.

The original gridded data were available at approximately **0.25° spatial resolution** and were resampled to a **0.5° × 0.5° grid** for the global analysis.

All data processing and statistical analyses were conducted using **R**.

### Long-Term Trend in Terrestrial Water Storage

Long-term changes in terrestrial water storage were estimated using **Theil–Sen robust regression** applied to the gap-filled monthly ΔTWS time series for each grid cell.

The Theil–Sen estimator is a non-parametric method that is relatively insensitive to outliers and non-normality, making it suitable for large-scale hydrological datasets.

The resulting trends were interpreted as:

- **Positive ΔTWS trend:** increasing terrestrial water storage, potentially reflecting wetter conditions associated with increased precipitation, flooding, or land-use changes such as the construction of dams or reservoirs.
- **Negative ΔTWS trend:** declining terrestrial water storage, potentially reflecting persistent drought or depletion of groundwater, soil moisture, or surface-water resources.

### Standardised Terrestrial Water Storage Index

A **Standardised Terrestrial Water Storage Index (STWSI)** was calculated from the monthly GRACE ΔTWS anomalies to enable comparison of hydrological conditions across locations.

For each **0.5° grid cell**, monthly TWS anomalies from January 2003 to December 2025 were standardised relative to the climatological distribution for the corresponding calendar month.

For each calendar month, the long-term mean and standard deviation were calculated. Individual observations were then standardised as:

**STWSI = (Monthly TWS anomaly − Long-term monthly mean) / Long-term monthly standard deviation**

This process removes the seasonal cycle and accounts for normal intra-annual variability.

The resulting STWSI is a dimensionless index with approximately:

- **Mean = 0**
- **Standard deviation = 1**

The index therefore represents departures from typical terrestrial water-storage conditions and can be used to identify unusually dry and wet periods consistently across regions.

### Dry Water Storage Conditions

The frequency of **low water storage conditions** was calculated as the proportion of months where:

**STWSI < −1.5**

These conditions represent substantial negative departures from normal terrestrial water storage and indicate increased risk of hydrological drought or water-storage deficits.

### Wet Water Storage Conditions

The frequency of **high water storage conditions** was calculated as the proportion of months where:

**STWSI > +1.5**

These conditions represent unusually high terrestrial water storage and may be associated with extreme precipitation, flooding, or other substantial increases in water storage.

### Changes in Dry and Wet Conditions

Changes in the frequency of dry and wet water-storage conditions were assessed by comparing two periods:

- **2006–2015**
- **2016–2025**

For each location, changes were calculated separately for dry and wet conditions.

- A **positive change in dry frequency** indicates that unusually low water-storage conditions occurred more frequently during 2016–2025.
- A **positive change in wet frequency** indicates that unusually high water-storage conditions occurred more frequently during 2016–2025.

These measures provide information on changes in hydrological extremes and variability over time.

## Data

- **GRACE/GRACE-FO Mascon monthly dataset**
- **Provider:** Center for Space Research (CSR)
- **Product version:** RL06.3
- **Available data:** April 2002–January 2026
- **Analysis period:** January 2003–December 2025
- **Analysis grid:** 0.5° × 0.5°

## Caveats and Limitations

1. **Use of a single GRACE product**

   Several global GRACE terrestrial water-storage products are available. This analysis uses the **CSR GRACE/GRACE-FO mascon RL06.3 product** because it provides coverage through the end of 2025.

   Estimates may vary between GRACE products because of differences in data processing and methodological assumptions. Using a single product therefore introduces uncertainty into the analysis.

2. **Uncertainty in trend estimates**

   Not all grid cells exhibit statistically robust long-term trends. The magnitude and direction of the Theil–Sen trend should therefore be interpreted alongside the underlying temporal variability in terrestrial water storage.

3. **Simplified standardisation of STWSI**

   STWSI was calculated by standardising monthly TWS anomalies using their long-term monthly mean and standard deviation.

   Unlike some standardised climate indices, such as the Standardised Precipitation Index (SPI), a specific probability distribution was not fitted to the observations because GRACE TWS anomalies generally approximate a normal distribution.

4. **Missing observations and gap filling**

   The GRACE time series contains missing observations, including the substantial gap between the original GRACE and GRACE-FO missions.

   These missing observations required interpolation and climatological gap filling. Although these procedures allow construction of a continuous monthly time series, they introduce additional uncertainty into estimates for the affected periods.

