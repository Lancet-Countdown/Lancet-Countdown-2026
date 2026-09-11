# Methods

The analysis followed the same three-stage approach used in the 2025 Global Lancet Countdown report and described in Zhao et al.

## Stage 1: Location-specific temperature–mortality associations

In the first stage, the lagged and non-linear association between temperature and mortality was estimated independently for each location using **quasi-Poisson regression models** combined with **distributed lag non-linear models (DLNMs)**.

First-stage analyses were conducted at either regional or country level, depending on the availability of mortality data. Where mortality data were only available as weekly or monthly counts, the underlying association between daily temperature and daily mortality was estimated using the same modelling framework.

The model included:

- an intercept
- a natural cubic spline of time with **8 degrees of freedom per year** to control for seasonal and longer-term trends
- a cross-basis function to estimate the exposure-lag-response association between daily temperature and mortality

```math
\log(E(mort)) =
intercept +
ns(time, 8\ df\ per\ year) +
crossbasis(temp, 0\text{-}21\ days)
```

The exposure-response component of the cross-basis was modelled using a natural cubic spline with three internal knots placed at the **10th, 75th and 90th percentiles** of daily temperature.

The lag-response component was modelled using a natural cubic spline with an intercept and three internal knots placed at equally spaced intervals on the log scale, with lags ranging from **0 to 21 days**.

## Stage 2: Meta-regression

In the second stage, a multivariate multilevel meta-regression was used to pool the location-specific reduced coefficients obtained from the first stage.

The regional-level meta-predictors were:

- altitude, in metres
- average temperature, in °C

The country-level meta-predictors were:

- agricultural land, as a percentage of land area
- logarithm of GDP per capita, in US dollars
- population aged 65 years or older, as a percentage of the total population
- health expenditure, as a percentage of GDP

Best linear unbiased predictions (BLUPs) of the reduced coefficients were obtained for each location from the meta-regression model.

## Stage 3: Predictions for all countries

In the third stage, exposure-response associations were predicted for all countries, including those without available daily, weekly or monthly mortality data.

These predictions used:

- the fitted meta-regression model
- the meta-predictors from the second stage
- spatial predictions of the BLUP residuals obtained through kriging

## Mean annual cycle of mortality

The same three-stage procedure was used to estimate the mean annual cycle of daily mortality for each location.

```math
\log(E(mort)) =
offset(\log(annmort)) +
cs(doy, 6\ df)
```

where:

- `annmort` is annual mortality
- `cs` is a cyclic B-spline
- `doy` is day of year

The cyclic B-spline used six equally spaced knots.

For this analysis, only the regional meta-predictors were included in the meta-analysis. The coefficients of the cyclic B-spline were meta-predicted for all countries and multiplied by annual mortality estimates from the Global Burden of Disease.

## Heat-attributable mortality

Heat-attributable fractions were calculated by summing the contributions of all days with temperatures above the locally estimated **minimum mortality temperature**.

Heat-attributable numbers were then calculated by multiplying the attributable fractions by the estimated mean annual cycle of daily mortality.

Mortality data were obtained from official registries at country or regional level and were available at daily, weekly or monthly resolution depending on the location.

Temperature data were transformed into regional, population-weighted daily averages. Altitude, used as a meta-predictor, was also calculated as a population-weighted average.

# Data

The indicator uses the following data sources:

- **Temperature and altitude:** ERA5-Land hourly gridded 2 metre temperature at 0.1° resolution from the Copernicus Climate Change Service Climate Data Store. :contentReference[oaicite:0]{index=0}
- **Mortality and population:** yearly country-level mortality and population estimates from the Global Burden of Disease. :contentReference[oaicite:1]{index=1}
- **Gridded population:** Gridded Population of the World, Version 4, Revision 11 (GPWv4). :contentReference[oaicite:2]{index=2}
- **Meta-predictors:** World Development Indicators, World Bank Group. :contentReference[oaicite:3]{index=3}
- **Mortality registry data:** official mortality registries, complemented with data from the United Nations Statistics Division Demographic Statistics Database, Eurostat Mortality Statistics and the World Mortality Dataset. :contentReference[oaicite:4]{index=4}

Mortality data availability varied by country, spatial level, years covered and temporal resolution. The underlying dataset includes national and regional mortality series with daily, weekly or monthly observations.

# Caveats and Limitations

The exposure-response associations were meta-predicted for all countries to ensure consistency across continents.

Country-level indicator values were not provided because attributable mortality could not be calculated reliably at regional level where regional mortality estimates were unavailable in the Global Burden of Disease. Regional-level estimation is important because temperature-mortality relationships can vary substantially within countries, for example between coastal and mountainous areas. National-level epidemiological associations may therefore fail to capture important subnational differences. :contentReference[oaicite:5]{index=5}

The indicator also compares periods of different lengths, eight and ten years, because Global Burden of Disease mortality estimates were not available for 2024–2025. :contentReference[oaicite:6]{index=6}
