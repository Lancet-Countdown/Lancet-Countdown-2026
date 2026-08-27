# Terrestrial Water Storage

## Methods

A set of water storage-related indicators was derived from **GRACE (Gravity Recovery and Climate Experiment)** satellite observations. These indicators include:

1. **Theil–Sen trend in total terrestrial water storage (TWS)** for the period January 2003 to December 2025; and
2. **Standardised Terrestrial Water Storage Index (STWSI)**.

The GRACE mission consists of a pair of Earth observation satellites jointly implemented and managed by NASA (USA) and the German Aerospace Center (DLR) since March 2002 under the Earth System Science Pathfinder Programme.<sup>1,2</sup>

The GRACE and GRACE Follow-On (GRACE-FO) mascon dataset from the **Center for Space Research (CSR)** provides near-global observations of total water storage anomalies from April 2002 to January 2026.<sup>3</sup>

Total terrestrial water storage anomaly (ΔTWS) represents the sum of water stored on and beneath the land surface, including soil moisture, surface water (rivers, lakes, and wetlands), groundwater, snow, and ice.<sup>4</sup> Currently, GRACE is the only tool capable of mapping spatiotemporal changes in TWS at a monthly time step, with groundwater often being the largest component.<sup>5</sup>

### GRACE Data Processing

The CSR mascon solutions incorporate geophysical corrections and are widely used for robust assessment of large-scale hydrological variability.<sup>3</sup>

For this analysis, we constructed a continuous monthly time series (**January 2003–December 2025**) by addressing data gaps. Short gaps (**less than three consecutive months**) within the GRACE record were filled using linear interpolation, while the larger gap (**July 2017 to May 2018**) between the GRACE and GRACE-FO missions was reconstructed using a mean TWS climatology derived from a six-year overlapping period (**January 2015 to December 2020**), ensuring temporal consistency in the time-series data.

The gridded dataset, originally available at **0.25° spatial resolution**, was resampled to **0.5°** for the global-scale analysis.

All data processing and analyses were conducted in the **R programming language**.

### Theil–Sen Trend in Total Terrestrial Water Storage

To quantify long-term changes, a non-parametric measure of trend magnitude—the **Theil–Sen robust regression**—was applied to the gap-filled monthly GRACE-derived ΔTWS series at the global scale.<sup>6</sup>

This method provides a robust estimate of trend magnitude that is less sensitive to outliers and non-normality, making it well suited to global hydrological data.

Positive trends in ΔTWS are interpreted as indicating increasing water storage and potential wetting conditions driven by enhanced precipitation, flooding, or land-use changes (e.g., construction of dams or large reservoirs).

Negative trends are interpreted as indicating declining terrestrial water storage and drying conditions associated with persistent drought or depletion of surface water, soil moisture, or groundwater.

### Standardised Terrestrial Water Storage Index

A **Standardised Terrestrial Water Storage Index (STWSI)** was derived from GRACE ΔTWS anomaly data following a method similar to that of Cui et al.<sup>7</sup> to enable comparison of hydrological conditions across countries.

The STWSI was calculated by standardising monthly TWS anomalies (**January 2003–December 2025**) relative to their climatological distribution for each calendar month.

For each grid cell (**0.5°**), the long-term monthly mean and standard deviation were computed, and each value was standardised by subtracting the monthly mean and dividing by the monthly standard deviation.

This approach removes the seasonal cycle and accounts for intra-annual variability, producing a dimensionless index (**mean = 0, variance = 1**) analogous to the **Standardised Precipitation Index (SPI)**.

The STWSI therefore captures deviations from typical conditions, enabling consistent identification of anomalously dry and wet conditions in total water storage across regions.

### Dry and Wet Frequency

Using the STWSI, several statistics were calculated.

First, the frequency of **low water storage conditions (dry frequency)** was defined as the proportion of months with:

```math
STWSI < -1.5
```

representing water deficits linked to hydrological drought risk.

Second, the frequency of **high-water storage conditions (wet frequency)** was defined as the proportion of months with:

```math
STWSI > +1.5
```

indicating anomalously wet conditions associated with positive gains in total water storage, often linked to extreme precipitation and flooding.

Third, changes in these frequencies were quantified by comparing two decadal periods:

- **2006–2015**
- **2016–2025**

Positive changes in dry frequency and wet frequency indicate increasing occurrences of dry and wet extremes, respectively, reflecting intensification of hydrological variability under changing climate and land-use conditions.

---

## Data

- **GRACE/GRACE-FO Mascon monthly dataset:** Product version **RL06.3**, data span April 2002 to January 2026, Center for Space Research (CSR), 2026.<sup>3</sup>

---

## Caveats and Limitations

Several global-scale GRACE TWS products are available. In this analysis, the **GRACE mascon monthly dataset (product version RL06.3; April 2002–January 2026)** from the Center for Space Research (CSR) was used because it provides data coverage up to the end of 2025.

The use of a single GRACE product introduces uncertainty into the analysis.

Additional uncertainties arise in trend estimation, as not all grid cells yield statistically robust trends.

The approach used to calculate the STWSI is relatively simple. Unlike the **Standardised Precipitation Index (SPI)**, no specific probability distribution was fitted, as GRACE TWS anomalies generally approximate a normal distribution.

Further limitations include data gaps and the need for imputation using linear interpolation and short-term climatological gap-filling.

## References

1. Rodell M, Famiglietti JS, Wiese DN, *et al.* Emerging trends in global freshwater availability. *Nature* 2018; **557**: 651–9.

2. Save H, Bettadpur S, Tapley BD. High-resolution CSR GRACE RL05 mascons. *J Geophys Res Solid Earth* 2016; **121**: 7547–69.

3. Arifin A, Shamsudduha M, Ramdhan AM, *et al.* Plausibility Criteria for GRACE-Derived Groundwater Storage Changes From Aquifers Globally. *Geophys Res Lett* 2025; **52**. DOI:10.1029/2025GL118580.

4. Shamsudduha M, Taylor RG. Groundwater storage dynamics in the world's large aquifer systems from GRACE: Uncertainty and role of extreme precipitation. *Earth System Dynamics* 2020; **11**: 755–74.

5. Jasechko S, Seybold H, Perrone D, *et al.* Rapid groundwater decline and some cases of recovery in aquifers globally. *Nature* 2024; **625**: 715–21.

6. Cui A, Li J, Zhou Q, *et al.* Use of a multiscalar GRACE-based standardized terrestrial water storage index for assessing global hydrological droughts. *J Hydrol (Amst)* 2021; **603**. DOI:10.1016/J.JHYDROL.2021.126871.

7. Kusche J, Strohmenger C, Gerdener H, *et al.* Benefit of MAGIC and multipair quantum satellite gravity missions in Earth science applications. *Geophys J Int* 2025; **242**. DOI:10.1093/GJI/GGAF195.
