# 1.1.1.1 Attribution of heatwave days to climate change
## Methods

### Overview

To quantify the impact of **human-caused climate change on heatwave exposure**, we estimated temperatures under a counterfactual climate with no anthropogenic forcing. The difference between the number of heatwave days in the observed climate and the counterfactual climate represents the number of heatwave days attributable to human-caused climate change.

### Heatwave Definition

Heatwaves were defined as periods of at least **three consecutive days** during which both daily minimum and maximum temperatures exceeded the **local 95th percentile**.

Temperature percentiles were calculated relative to the **1986–2005 baseline period**.

### Counterfactual Temperature Estimation

Daily counterfactual temperatures were obtained using the **Climate Shift Index attribution system**,<sup>1</sup> which implements a multi-method approach to climate change attribution.<sup>2</sup>

The attribution system first characterises the distribution of daily temperatures at each ERA5 grid point over the **1991–2020 reference period**. Temperature distributions are estimated for 24 periods throughout the year and parameterised using a **skew-normal distribution**.

The method then uses the observed linear relationship between local temperature and **global mean temperature (GMT)** for each period. This relationship is estimated for **21 evenly spaced quantiles between 0.10 and 0.99**.

The temperature distribution for a particular year is shifted according to the difference:

[GMT_{yr} - GMT_{ref}]

where the mean GMT during the 1991–2020 reference period was approximately **0.8°C** above the pre-industrial baseline.

Multiplying the estimated temperature–GMT slopes by this difference shifts the reference distribution to represent the climate conditions of year *yr*. This is referred to as the **modern climate distribution**.

To estimate the counterfactual climate without anthropogenic warming, the same procedure is applied using **GMT = 0.0°C**.

### Empirical Attribution Pathways

Two empirical approaches were used to generate paired modern and counterfactual temperature distributions.

1. **Median-based approach**
   Only the relationship between median temperature and GMT was used. Under this approach, the shape of the temperature distribution remains the same as the reference climate while the distribution is shifted according to changes in GMT.

2. **Quantile-based approach**
   The full set of 21 quantile-specific relationships was used. This allows both the location and shape of the temperature distribution to change with GMT.

These approaches produced **two empirical pairs of modern and counterfactual climate distributions**.

### Climate Model Attribution

In addition to the empirical approaches, we used **24 paired climate model simulations from CMIP6**.

Each model pair consisted of:

* a simulation forced with historical and projected radiative forcing, using **SSP3-7.0**, or **SSP5-8.5** where SSP3-7.0 was unavailable; and
* a corresponding simulation under a **pre-industrial control scenario**.

For a given year *yr*, the modern climate distribution was calculated from a **31-year period** centred on the year when the model's GMT first exceeded the observed GMT for year *yr*.

The corresponding counterfactual climate distribution was calculated using the same period from the model's pre-industrial control simulation.

The **1991–2020 ERA5 temperature data** were used to de-bias the climate model simulations.<sup>2,3</sup>

### Calculation of Counterfactual Temperatures

Together, the procedure generated:

* **2 empirical pairs** of modern and counterfactual climates; and
* **24 CMIP6 model-based pairs** of modern and counterfactual climates.

For each observed daily temperature (T):

1. The quantile associated with (T) was identified within the corresponding modern climate distribution.
2. The temperature corresponding to the same quantile was then identified within the counterfactual distribution.
3. This temperature was taken as the estimated **counterfactual temperature**.<sup>1</sup>

An ensemble-average counterfactual temperature was then calculated in three stages:

1. Counterfactual temperatures from the **two empirical approaches** were averaged.
2. Counterfactual temperatures from the **24 CMIP6 models** were averaged.
3. The empirical average and climate-model average were then averaged to obtain the final ensemble counterfactual temperature.


### Heatwave Days Attributable to Climate Change

Heatwaves were calculated separately using the observed and counterfactual daily temperature datasets.

For each location and year:

**Attributable heatwave days = Observed heatwave days − Counterfactual heatwave days**

Positive values therefore represent additional heatwave days attributable to **human-caused climate change**.


### Population Weighting

Results were expressed as **population-weighted averages for Lancet Countdown countries**.

Annual population estimates from **WorldPop 2025** were used for population weighting. Population data were regridded to match the spatial resolution and grid structure of the ERA5 temperature data.

Population-weighted results were calculated for the average distribution over **2016–2025**, giving greater weight to grid cells containing larger populations.



## Data

* **Climate data:** ECMWF ERA5 reanalysis data and corresponding daily counterfactual temperatures estimated using a multi-method climate attribution approach.

* **Demographic data:** WorldPop 2025 population data, averaged over **2016–2025**, were used for population weighting.

## Caveats and Limitations

1. **Counterfactual climate estimation**

   Climate attribution relies on estimating the conditions that would have occurred in the absence of human-caused climate change (i.e., the counterfactual climate). Because this counterfactual climate cannot be directly observed, there is inherent uncertainty in its estimation. To address this, the counterfactual temperatures used in this indicator were constructed using multiple empirical and climate-model pathways, consistent with best practice in climate attribution research.

2. **Interpretation of attributable heatwave days**

   The main measure reported by this indicator is the **number of heatwave days added by human-caused climate change**. These are days on which the observed temperatures met the heatwave criteria while the corresponding counterfactual temperatures did not.

   This binary classification provides a useful indicator of climate change attribution but does not capture the full range of heat-related impacts. For example, days that do not meet the heatwave threshold in the counterfactual climate may still have been very warm. Similarly, days that meet the heatwave criteria in both the observed and counterfactual climates are generally warmer in today's climate and may therefore pose greater risks to health because of human-caused climate change.

   ## References
   
[1] Gilford DM, Pershing A, Strauss BH, Haustein K, Otto FEL. A multi-method framework for global real-time climate attribution. Adv Stat Climatol Meteorol Oceanogr 2022; 8: 135–54.
   
[2]	Lange S. Trend-preserving bias adjustment and statistical downscaling with ISIMIP3BASD (v1.0). Geosci Model Dev 2019; 12: 3055–70.
    
[3] 	Xu Z, FitzGerald G, Guo Y, Jalaludin B, Tong S. Impact of heatwave on mortality under different heatwave definitions: A systematic review and meta-analysis. Environ Int 2016; 89–90: 193–203.

