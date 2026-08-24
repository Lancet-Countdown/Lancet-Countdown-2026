Methods
Drought Metric

This indicator uses the 6-month Standardised Precipitation Evapotranspiration Index (SPEI6) to measure the proportion of land surface affected by drought events.<sup>114,115</sup>

SPEI accounts for both the intensity and duration of drought and captures the combined influence of precipitation and potential evapotranspiration (PET) on drought severity.

Climate Data and SPEI Calculation

Climate data were obtained from the ERA5-Land reanalysis dataset produced by the European Centre for Medium-Range Weather Forecasts (ECMWF).<sup>11</sup>

For 1980–2024, monthly averaged daily precipitation and potential evapotranspiration data were available. PET was estimated using the Hargreaves method.

PET data were not available directly for 2025. Therefore, daily minimum and maximum temperatures were downloaded and used to calculate PET for 2025 using the Hargreaves method<sup>116</sup> and the SPEI R package.<sup>117</sup>

For the full time series, PET was combined with precipitation to calculate SPEI. The indicator uses 6-month SPEI (SPEI6), with 1981–2020 used as the baseline period for fitting the distribution.

SPEI was calculated following the standard methodology established by Vicente-Serrano et al.<sup>114</sup> using the SPEI R package.<sup>117</sup>

Large desert areas were excluded from the analysis.

Drought Severity Classification

Drought conditions were classified into four severity levels using SPEI thresholds defined by the Federal Office of Meteorology and Climatology MeteoSwiss.<sup>118</sup>

SPEI value	Drought severity	Approximate frequency
−0.80 to −1.29	Moderate drought	1–2 times in 10 years
−1.30 to −1.59	Severe drought	1–2 times in 20 years
−1.60 to −1.99	Extreme drought	1–2 times in 40 years
< −2.00	Exceptional drought	Once in 50 years or less
Excess Drought Events

To identify unusually high drought occurrence, excess drought events were calculated separately for each drought severity level.

For each grid cell, the annual number of months experiencing drought was calculated. An excess drought event was defined as an annual count of drought months exceeding two standard deviations above the mean annual number of drought months during the 1981–2020 baseline period.

The percentage of land area experiencing excess drought events was then calculated separately for each drought severity category.

For this indicator, only the following categories were included in the final results:

Extreme drought
Exceptional drought
Data
ERA5-Land reanalysis data – Copernicus Climate Change Service (C3S) Climate Data Store (CDS).<sup>11</sup>
Precipitation data – used together with PET to calculate SPEI.
Potential evapotranspiration (PET) – available for 1980–2024 and calculated for 2025 from daily minimum and maximum temperatures using the Hargreaves method.
Baseline period: 1981–2020.
Analysis period: 1980–2025.
Caveats and Limitations

Meteorological drought only

This indicator captures the effects of climate conditions on meteorological drought, but does not directly capture hydrological or agricultural drought, both of which can have substantial impacts on human health.

Population exposure is not directly measured

The indicator measures the proportion of land affected by drought rather than the number of people directly exposed to drought conditions.

Population weighting is not appropriate because people affected by drought do not necessarily live within the drought-affected area. For example, agricultural drought may occur in sparsely populated regions but have substantial effects on food production and food supply for populations living elsewhere.

Land area does not directly represent health impact

Trends in the geographical extent of extreme or exceptional drought cannot therefore be directly interpreted as trends in the number of people affected.

Further work is required

Further research is needed to link reported societal and health impacts of drought with climatic drought indicators. This will require improved understanding of population exposure, vulnerability, food-system impacts, and other pathways through which drought affects human health.
