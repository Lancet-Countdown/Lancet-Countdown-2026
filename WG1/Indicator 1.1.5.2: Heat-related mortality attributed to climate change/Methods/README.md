# Methods

This indicator estimates the contribution of **anthropogenic greenhouse gas emissions to heat-related mortality** by comparing mortality under factual and counterfactual climate scenarios.

The contribution of anthropogenic greenhouse gas emissions was calculated as the difference between:

- **Factual mortality:** temperature-related mortality estimated under the observed climate.
- **Counterfactual mortality:** temperature-related mortality estimated under a climate without human-induced greenhouse gas emissions.

## Factual mortality

The factual estimates of temperature-related mortality were obtained from **Indicator 1.1.5.1**.

## Counterfactual mortality

Counterfactual mortality estimates were calculated by combining:

- counterfactual temperatures obtained from **Indicator 1.1.1**
- exposure-response associations between temperature and mortality obtained from **Indicator 1.1.5.1**

The counterfactual temperatures represent climatic conditions in the absence of human-induced greenhouse gas emissions.

## Temperature bias correction

Daily counterfactual temperatures were modelled using **ERA5**, while the exposure-response associations used in Indicator 1.1.5.1 were calibrated using **ERA5-Land**.

To ensure consistency between these datasets, bias-corrected counterfactual ERA5-Land temperatures were generated using the **delta method**.

The difference between factual ERA5 temperatures and counterfactual ERA5 temperatures was calculated and then applied to ERA5-Land temperatures to obtain the corresponding counterfactual ERA5-Land temperature series.

The resulting factual and counterfactual temperature series were then used with the temperature-mortality exposure-response associations to estimate the mortality attributable to anthropogenic greenhouse gas emissions.

# Data

The indicator uses the following data sources:

- **ERA5-Land:** hourly gridded 2 metre air temperature at 0.1° resolution from the Copernicus Climate Change Service Climate Data Store.
- **ERA5:** hourly gridded 2 metre air temperature at 0.25° resolution.
- **Counterfactual temperature data:** corresponding daily counterfactual temperatures calculated using a multi-method climate attribution approach.
- **Population data, meta-predictors and mortality data:** the same data sources used for **Indicator 1.1.5.1**.

# Caveats and Limitations

The caveats and limitations described for **Indicator 1.1.5.1** also apply to this indicator.

In addition, the counterfactual temperature calculations are based on ERA5. ERA5 can have larger biases than ERA5-Land in some locations, particularly in areas with high topographic variability. These differences may introduce additional uncertainty into the counterfactual temperature estimates and, consequently, the estimated anthropogenic contribution to heat-related mortality.
