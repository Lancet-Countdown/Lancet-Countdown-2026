# Methods

Stranded assets are defined as coal-fired power generation units that can no longer obtain their expected economic returns because of the transition to a low-carbon economy and therefore cease operation before the end of their expected economic lifetime.

Several approaches can be used to value stranded assets, including:

- Net Book Value (NBV)
- Net Present Value (NPV)
- Cost-based methods

For this indicator, the **Net Book Value method**, using the **Overnight Cost of Capital**, is applied.

The NPV method requires a relatively complex set of parameters, including assumptions about future electricity prices, plant-specific discount rates, capacity factors, capital costs, operation and maintenance costs, and energy costs. Many of these plant-level parameters are unavailable for the 59 countries included in the analysis, are commercially sensitive, or are highly uncertain when projected into the future.

In contrast, the NBV method requires fewer key parameters and can therefore be applied consistently across coal-fired power plants in multiple countries.

Considering the availability of global plant-level data, the NBV method is used to construct a **lowest-stranded-assets coal phase-down pathway**, providing a lower-bound estimate of the potential scale of stranded assets.

## Calculation of stranded assets

The stranded asset value of a coal-fired power unit is calculated by multiplying its capital expenditure by the proportion of its expected lifetime remaining when it is prematurely retired.

```math
\text{Stranded Assets}
=
OCC \times K \times \frac{L-R}{L}
```

where:

- **OCC** = overnight cost of capital for the country, in US$/kW
- **K** = installed capacity of the coal-fired unit, in kW
- **L** = expected lifetime of the coal-fired unit, in years
- **R** = retirement age of the unit at premature retirement, in years

The expected lifetime of a coal-fired power unit is assumed to be **40 years**.

## Overnight cost of capital

The Overnight Cost of Capital provides a reference value for estimating the capital expenditure of each coal-fired power plant.

OCC values for coal-fired power plants were obtained from the **International Energy Agency** and the **International Renewable Energy Agency** where available.

OCC data were available directly for countries including:

- European Union countries
- United States
- China
- Japan
- India
- Australia
- Indonesia
- South Africa
- Brazil
- Malaysia
- Türkiye
- Philippines
- South Korea
- Vietnam

For countries without directly available OCC values, estimates were derived using **Human Development Index** or **GDP per capita**.

The 59 countries included in the stranded-assets analysis were ranked according to HDI or GDP per capita. Countries without OCC data were then compared with countries for which OCC estimates were available.

Where countries had similar HDI or GDP per capita values, the OCC of a comparable country was used.

Where no sufficiently comparable country was available, an equal-proportion approach was used to estimate OCC.

For low-income countries, **India's OCC value of 1,200 US$/kW** was used as the reference value. Therefore, an OCC of **1,200 US$/kW** was assumed for low-income countries included in the analysis.

## Coal-fired power plant data

Plant-level information on coal-fired power generation is used to determine:

- installed capacity
- plant opening date
- expected plant lifetime
- premature retirement age
- geographic location

Installed capacity is expressed in kW.

Plant opening dates are used to determine the age of each coal-fired generating unit when it becomes stranded and therefore the proportion of its expected lifetime that remains.

The expected average lifetime of a coal-fired power unit is set at **40 years**.

## Phase-down pathway

The indicator evaluates stranded assets under a coal phase-down pathway consistent with the **1.5°C SSP1-1.9 scenario**.

Different coal phase-down pathways can result in different levels of stranded assets. For this indicator, a **lowest-stranded-assets phase-down roadmap** is constructed to provide a lower-bound estimate of the potential stranded asset value associated with the transition away from coal-fired power generation.

The analysis covers existing coal-fired power units and does not include planned units.

# Data

The indicator uses the following data sources:

- **Plant-level geographic information:** Global Energy Monitor and OpenStreetMap
- **1.5°C SSP1-1.9 scenario:** SSP Database, IIASA
- **Installed capacity of coal-fired units:** Global Energy Monitor
- **Expected lifetime of coal-fired units:** Global Energy Monitor
- **Opening dates of coal-fired units:** Global Energy Monitor
- **Overnight cost of capital:** International Energy Agency and International Renewable Energy Agency
- **HDI and GDP per capita:** used to estimate OCC for countries without directly available values

# Caveats and Limitations

This indicator considers stranded assets only for **coal-fired power plants in the power generation sector**.

The analysis includes existing coal-fired units but does not include planned units.

The NBV method used in this indicator does not incorporate the **Weighted Average Cost of Capital**. Reliable and consistent WACC data are not available for all countries and regions included in the analysis.

The NBV approach therefore focuses on two key factors that directly determine stranded asset value:

- capital expenditure
- remaining plant lifetime

Other plant-level factors can also affect stranded asset values, including:

- electricity prices
- operation and maintenance costs
- plant-specific discount rates
- capacity factors
- fuel and energy costs

Many of these parameters are unavailable at plant level across all 59 countries, may be commercially confidential, or are uncertain when projected into the future. They are therefore not included in this method.

Different coal phase-down pathways would generate different stranded asset estimates. The pathway used here is designed to minimise stranded asset values and therefore provides a **lower-bound estimate** of the potential scale of stranded coal assets.
