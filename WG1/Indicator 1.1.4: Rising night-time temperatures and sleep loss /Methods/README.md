# Methods

This indicator tracks global annual sleep loss attributable to warmer nighttime temperatures.

The indicator tracks the relationship between human sleep and warmer nighttime temperatures. Across multiple settings, high nighttime temperatures have been shown to adversely affect the duration, timing and quality of human sleep.

Sleep is an important component of overall human health and wellbeing. Tracking the effect of warmer nighttime temperatures on human sleep therefore provides insight into one of the ways climatic changes can affect health. Sleep interventions may also provide practical ways to reduce some of the health risks associated with hot nighttime temperatures.

## Temperature and sleep relationship

The indicator uses parameters estimated from a global study linking nighttime temperatures to sleep outcomes.

The underlying study used fitness tracking bands to measure more than **10 billion sleep observations** from over **45,000 individuals in 68 countries** between 2015 and 2017.

The study estimated the relationship between nighttime temperature and sleep using separate temperature bins and controlled for a broad range of individual, temporal and meteorological factors.

The statistical models controlled for:

- stable individual characteristics
- household characteristics, including access to air conditioning
- global time-varying factors, such as date
- location-specific seasonality
- precipitation
- wind speed
- relative humidity
- diurnal temperature range
- cloud cover

The resulting estimates provide the relationship between nighttime temperature and changes in sleep duration.

## Indicator metric

The indicator estimates the **percentage change in the annual total number of hours of sleep lost globally due to warmer than optimal nighttime temperatures**, relative to the **1986–2005 baseline average**.

Because the estimated temperature-sleep relationship was similar across climatic regions and countries in the underlying study, the empirical relationship is applied to the global population.

## Climate and population data

The analysis uses:

- ERA5 reanalysis meteorological data from 1986 onwards, at approximately 31 km spatial resolution
- gridded population data from NASA SEDAC, harmonised to the ERA5 spatial resolution and extent
- linear spline parameters derived from the global empirical study of nighttime temperature and sleep loss

Nighttime temperature is represented using the **daily minimum of hourly 2 metre air temperature** from ERA5.

## Estimation of sleep loss

For each grid cell and day, the linear spline coefficients from the underlying empirical model are applied to the corresponding nighttime temperature.

This produces an estimated sleep loss value for each **grid-cell-day**.

The daily values are then summed within each grid cell and year to estimate the cumulative annual sleep loss attributable to nighttime temperatures.

The process can be summarised as:

1. Extract daily minimum nighttime temperature for each grid cell.
2. Apply the temperature-sleep response function from the underlying empirical model.
3. Estimate sleep loss for each grid-cell-day.
4. Sum daily sleep loss across the year to obtain annual sleep loss for each grid cell.

## Population weighting

To ensure that estimated impacts reflect where people live, annual grid-cell sleep loss values are weighted using population proportions derived from the **2000–2020 average of global gridded population data**.

The population data are harmonised in projection and geographic extent with the ERA5 raster data.

This produces an annual **population-weighted nighttime temperature-attributable sleep loss estimate** for each grid cell globally.

## Global aggregation

The population-weighted grid-cell-year estimates are then summed globally for each year.

This produces an estimate of annual global population-weighted sleep loss attributable to nighttime temperature.

The indicator then calculates:

- annual population-weighted sleep loss attributable to nighttime temperature
- absolute changes in sleep loss
- percentage changes in sleep loss
- changes relative to the **1986–2005 baseline period**

The indicator therefore addresses the question:

> To what degree did warmer nighttime temperatures alter annual human sleep globally, and how did this impact compare with the baseline period?

# Data

The indicator uses the following data sources:

- **Climate data:** European Centre for Medium-Range Weather Forecasts (ECMWF) ERA5 reanalysis
- **Population data:** Gridded Population of the World, Version 4, from the Center for International Earth Science Information Network at Columbia University
- **Temperature-sleep response parameters:** linear spline parameters from Minor et al. (2022)

# Caveats and Limitations

The indicator is based on a high-resolution global estimate of the relationship between nighttime temperature and sleep, but several limitations should be considered.

First, the analysis assumes that the temperature-sleep relationship estimated from the underlying global study can be applied to populations that were not included in the original sample.

The original study included tens of thousands of individuals across many countries, but participants who used fitness trackers may have been wealthier on average than populations not represented in the sample. Poorer populations may therefore be underrepresented.

Evidence suggests that lower-income populations can experience stronger adverse effects of warmer nighttime temperatures on sleep. As a result, the indicator may underestimate the total amount of sleep lost globally due to warmer than optimal nighttime temperatures.

Second, the relationship between ambient temperature and human sleep may change over time as populations adapt to changing temperatures.

For example, increased access to air conditioning or other cooling technologies could modify the relationship between nighttime temperature and sleep. Conversely, changes in vulnerability or exposure could also alter the response.

The underlying empirical study statistically controlled for individual air conditioning ownership and included populations from areas with relatively high air conditioning and fan use. The estimated relationship may therefore already capture some degree of adaptation, particularly at higher temperatures.

More recent global evidence also indicates that the relationship between nighttime temperature and sleep continues to be observed in the post-COVID period.
