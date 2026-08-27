## Methods

### Land Surface Drought

This drought indicator uses the **Standardised Precipitation Evapotranspiration Index (SPEI6)** as a measure of the land surface affected by drought events.<sup>2,3</sup> This index allows for both the intensity and duration of droughts to be taken into account. It captures the influence of both precipitation and potential evapotranspiration (PET) on drought severity.

Data were downloaded from **ERA5-Land**, a reanalysis product of the European Centre for Medium-Range Weather Forecasts (ECMWF).<sup>1</sup>

For the years **1980–2024**, monthly averaged daily precipitation and monthly daily accumulated potential evapotranspiration data, estimated using the Hargreaves method, were available.

PET data were not available for 2025. Instead, daily minimum and maximum temperatures were downloaded, and the Hargreaves method<sup>4</sup> and `SPEI` R package<sup>5</sup> were used to calculate PET.

For the whole time series, PET was combined with precipitation to calculate the SPEI. For the indicator, **6-month SPEI values** were calculated using **1981–2020** as the baseline period to fit the function.

The standard methodology for calculating SPEI and the `SPEI` R package were used.<sup>2,5</sup> Large desert areas were masked out for the analysis.

### Drought Severity

Droughts were defined according to four severity levels using the SPEI thresholds defined by the Federal Office of Meteorology and Climatology MeteoSwiss.<sup>6</sup>

| SPEI value | Description | Frequency of event in respective month |
|---|---|---|
| -0.8 to -1.29 | Moderate drought | 1–2 times in 10 years |
| -1.3 to -1.59 | Severe drought | 1–2 times in 20 years |
| -1.6 to -1.99 | Extreme drought | 1–2 times in 40 years |
| < -2 | Exceptional drought | 1 time in 50 years or less |

### Excess Severe Drought Events

To detect unusual drought events, **excess severe drought events** were defined as yearly counts of months in drought for each grid cell that exceeded **two standard deviations above the mean** of the yearly counts of months in drought during the baseline period **1981–2020**.

The excess events were defined independently for each SPEI severity level of drought, and the percentage of land area exposed to excess drought events at the different severity levels was calculated.

Only **extreme drought** and **exceptional drought** were included in the indicator.

---


## Data

- **ERA5-Land reanalysis data:** Copernicus Climate Change Service (C3S) Climate Data Store (CDS).<sup>1</sup>

---

## Caveats

A limitation of this indicator is that it only captures the impacts of climate change on **meteorological drought** and does not capture the impacts of climate change on hydrological or agricultural drought, which can have major health impacts.

Moreover, it does not measure the direct relationship between a drought and the population living in, or depending on, drought-affected areas.

It is not possible to apply population-based weighting because many people affected by a drought may not live in the area directly affected. For example, droughts affecting agricultural areas may occur in sparsely populated regions while having disproportionately large impacts on the food supply.

It is therefore difficult to determine trends in the number of people affected by drought from trends in extreme drought areas.

Further work is required to link reported drought damages in societies to climatic indicators. This would require a better understanding of population exposure factors.

---

## References

1. Muñoz-Sabater J, Dutra E, Agustí-Panareda A, *et al.* ERA5-Land: A state-of-the-art global reanalysis dataset for land applications. *Earth Syst Sci Data* 2021; **13**: 4349–83.

2. Begueria S, Latorre B, Reig F, Vincent-Serrano SM. The Standardised Precipitation-Evapotranspiration Index. CSIC. 2012. [https://spei.csic.es/home.html](https://spei.csic.es/home.html) (accessed April 29, 2026).

3. Hargreaves GH, Allen RG. History and Evaluation of Hargreaves Evapotranspiration Equation. *Journal of Irrigation and Drainage Engineering* 2003; **129**: 53–63.

4. Beguería S, Vicente-Serrano SM. Calculation of the Standardized Precipitation-Evapotranspiration Index [R package SPEI version 1.8.1]. *CRAN: Contributed Packages* 2023; published online March 2. DOI:10.32614/CRAN.PACKAGE.SPEI.

5. MeteoSwiss. Drought indices. MeteoSwiss. 2022. [https://www.meteoswiss.admin.ch/climate/climate-change/drier-summers/drought-indices.html](https://www.meteoswiss.admin.ch/climate/climate-change/drier-summers/drought-indices.html) (accessed April 29, 2026).

6. Tapley BD, Bettadpur S, Ries JC, Thompson PF, Watkins MM. GRACE measurements of mass variability in the Earth system. *Science (1979)* 2004; **305**: 503–5.
