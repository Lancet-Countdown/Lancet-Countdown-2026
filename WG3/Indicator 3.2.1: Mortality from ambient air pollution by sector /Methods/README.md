## Methods

### Overview

This indicator quantifies the contributions of individual **source sectors and fuels** to ambient PM2.5 exposure and associated health impacts.

Sector-specific contributions to annual mean ambient PM2.5 exposure were estimated using the **Greenhouse Gas–Air Pollution Interactions and Synergies (GAINS) model**. The GAINS model combines bottom-up emission estimates with atmospheric chemistry and dispersion modelling to estimate source-specific contributions to ambient PM2.5 concentrations.

### Energy and Activity Data

Energy statistics for **2007–2023** were obtained from the International Energy Agency (IEA) **World Energy Statistics** and **World Energy Balances**.

For technical reasons, historical energy data were imported into GAINS through the **IEA World Energy Outlook 2025 (WEO)** rather than directly from the statistical datasets. Historical WEO data are calibrated to the IEA statistics, and regional downscaling in GAINS is based on IEA country-level statistics; therefore, differences between the datasets are minimal.

Energy consumption data for individual sectors were matched to the corresponding IEA sectors and downscaled to the **182 global GAINS regions**.

Industrial production levels were also obtained from WEO and downscaled to the GAINS regions using appropriate statistical information.

### Emission Estimation

Activity data were combined with GAINS information on the application of emission-control technologies and corresponding emission factors to estimate emissions of:

- PM2.5
- Sulfur dioxide (SO2)
- Nitrogen oxides (NOx)
- Ammonia (NH3)
- Non-methane volatile organic compounds (NMVOCs)

Emissions from non-compliant vehicles, referred to as **high emitters**, were also incorporated into the calculations.

Air-quality policy assumptions were updated using the latest available evidence. For example, assumptions concerning SO2 emissions from **nickel and copper smelters** were updated using remote-sensing evidence.

Regulatory assumptions for power plants were also updated, affecting estimates of SO2, NOx, and particulate matter emissions in recent years, particularly in **India and South Asia**.

### Ambient PM2.5 Concentrations

Ambient PM2.5 concentrations were estimated from region- and sector-specific emissions using **atmospheric transfer coefficients**.

These coefficients provide a linear approximation of full chemistry-transport model simulations and represent the relationship between emissions from a particular source and resulting PM2.5 concentrations at receptor locations.

The atmospheric transfer coefficients used in GAINS are based on full-year perturbation simulations conducted using the **EMEP Chemistry Transport Model**.

Different modelling configurations were used for Europe and for the global domain outside Europe.

#### Global Domain Outside Europe

Outside Europe, perturbation simulations were conducted using **2015 meteorological conditions** at:

- **0.1° × 0.1° resolution** for low-level emission sources
- **0.5° × 0.5° resolution** for other emission sources

#### European Domain

For Europe, simulations used average meteorological conditions for **2016–2020**.

The model resolution was approximately:

- **0.3° × 0.2° (~22 km)** for SO2, NOx, NH3, and NMVOCs
- **0.1° × 0.1°** for primary particulate matter (PPM)

For PPM emissions from **road transport and residential heating**, concentrations were further downscaled to **250 m × 250 m** using the **uEMEP high-resolution extension of the EMEP model**.

### Europe and Central Asia

Calculations for Europe and Central Asia use a refined source-attribution approach.

In addition to perturbation simulations for individual source countries and pollutants, the ability of the EMEP model to track primary particulate matter from source to receptor grid cells was used to derive **sector-specific atmospheric transfer coefficients**.

This refinement has relatively little effect on estimated total PM2.5 concentrations but improves the attribution of PM2.5 exposure to individual source sectors.

### Validation

Modelled ambient PM2.5 concentrations were evaluated against in-situ monitoring observations from the **WHO Urban Ambient Air Pollution Database** and other available national data sources, including the Chinese statistical yearbook.

Overall, modelled concentrations showed good agreement with monitoring observations at the **urban-background level**.

However, highly localised variation, such as elevated concentrations immediately adjacent to roads, is not fully captured by a modelling resolution of several kilometres.

### Health Impact Assessment

Health impacts associated with ambient PM2.5 exposure were estimated using concentration-response functions from the **Fusion risk model** described by Burnett et al. (2022).

The Fusion model is based on a meta-analysis of cohort studies and applies a flexible exposure-response relationship between PM2.5 exposure and mortality.

An important characteristic of the model is that the marginal increase in risk decreases at very high PM2.5 concentrations, limiting attributable risk estimates under extremely high exposures.

The Fusion model provides concentration-response functions for several mortality outcomes associated with air pollution, including:

- Ischaemic heart disease (IHD)
- Chronic obstructive pulmonary disease (COPD)
- Acute lower respiratory infection (ALRI)
- Type 2 diabetes
- Non-communicable diseases plus lower respiratory infection (NCD + LRI)

For mortality estimates reported in this indicator, the **NCD + LRI concentration-response function** was used.

### Baseline Mortality and Population

Baseline mortality data were obtained from the **World Health Organization (WHO)** for non-communicable diseases plus lower respiratory infections among people aged over 25 years, by country and year.

Total population data used to calculate attributable mortality rates were obtained from the **UN World Population Prospects 2024**.

### Attribution of Mortality to Source Sectors

Estimated deaths attributable to ambient PM2.5 pollution were assigned to individual polluting sectors according to their proportional contribution to **population-weighted mean PM2.5 concentrations** within each country.

This approach first estimates the total mortality burden attributable to ambient PM2.5 and subsequently distributes that burden across source sectors according to their estimated contribution to exposure.

## Updates Introduced in 2026

Several methodological and data updates were introduced for the 2026 analysis.

### Baseline Mortality

Baseline mortality now uses **WHO cause-specific annual mortality data for non-communicable diseases plus lower respiratory infections**.

This replaces the approach used in previous reports, which combined disease-specific mortality rates from the Global Burden of Disease with age-specific total mortality estimates from UN World Population Prospects.

### Emission-Control Policies

Information on existing emission-control policies was updated for several sectors and countries, particularly in:

- Africa
- ASEAN countries
- India
- Western Balkans
- United Kingdom

Assumptions regarding SO2 emissions from nickel and copper smelters were updated using remote-sensing evidence.

For countries in Europe and Central Asia, assumptions were additionally updated using expert input and information on emission-reduction commitments.

For power plants and industrial boilers, new regulatory information and recent assessments resulted in revised estimates of **SO2, NOx, and particulate matter emissions**, particularly in South Asia, South-East Asia, and Africa.

In South Africa, for example, previous assumptions regarding the implementation of pollution controls at power plants were found to have been too optimistic and were revised.

Overall, changes in the distribution of energy-sector activity, together with updated assumptions regarding emission-control policies, resulted in higher estimated fossil-fuel emissions in some regions and consequently a higher global estimate of mortality associated with fossil-fuel combustion compared with the 2025 report.

## Data

The analysis uses the following data sources:

- **Energy:** IEA World Energy Balances and World Energy Statistics.
- **Industrial activity:** IEA World Energy Outlook historical activity and production data.
- **Agricultural activities:** Food and Agriculture Organization (FAO) livestock statistics and projections.
- **Fertiliser use:** International Fertilizer Association data.
- **Household energy:** WHO household energy database, including information used to distinguish urban and rural fuel use for cooking.
- **Population:** UN World Population Prospects 2024.
- **Mortality:** WHO Global Health Estimates, including deaths by cause, age, sex, country, and region.

## Caveats and Limitations

### Model Uncertainty

The indicator relies on model-based estimates and is therefore subject to uncertainty arising from emissions inventories, atmospheric modelling, exposure estimation, and underlying model assumptions.

The model resolution of approximately **7–10 km** is considered appropriate for estimating urban-background PM2.5 concentrations but may underestimate exposure in locations with strong local pollution gradients, such as roadsides or areas immediately surrounding major emission sources.

Meteorological conditions are also fixed within the atmospheric modelling framework:

- **2015** meteorology is used outside Europe.
- **2016–2020 average meteorology** is used for the European domain.

Consequently, the estimates do not represent year-to-year variation in PM2.5 resulting from changing meteorological conditions.

### Concentration-Response Functions

Uncertainty in the shape of concentration-response relationships introduces uncertainty into estimates of the health burden attributable to PM2.5.

Different risk models can produce different mortality estimates. These include:

- Integrated exposure-response functions used in Global Burden of Disease studies
- The Fusion risk model used in this indicator
- Linear exposure-response relationships recommended in some WHO Europe assessments

The absolute number of attributable deaths should therefore be interpreted in the context of the selected risk model.

### Source Attribution

Care is required when comparing Lancet Countdown estimates with studies using different approaches to attribute health impacts to emission sources.

This indicator first estimates the **total mortality burden attributable to PM2.5 exposure** and then allocates that burden to individual sectors according to their proportional contribution to population-weighted PM2.5 concentrations.

Because the concentration-response relationship is non-linear, this approach can produce different results from methods that estimate sector contributions by completely removing, or "zeroing out", emissions from an individual source category and recalculating health impacts.

These methodological differences should be considered when comparing sector-specific mortality estimates across studies.
