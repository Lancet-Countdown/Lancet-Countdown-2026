## Methods

This indicator focuses on mapping environmental suitability for pathogenic *Vibrio* spp. in coastal zones globally, defined as areas within **10 km of the coastline**.

*Vibrio* spp. are globally distributed aquatic bacteria that are ubiquitous in warm estuarine and coastal waters with low to moderate salinity. *V. parahaemolyticus*, *V. vulnificus*, and non-toxigenic *V. cholerae* (non-O1/non-O139) are pathogenic in humans. These *Vibrio* species are associated with cases of gastroenteritis, wound infections, ear infections, or septicaemia in circumscribed localities.

### Environmental Suitability

*Vibrio* ecology, abundances, distributions, and patterns of infection are often strongly mediated by environmental conditions.

Based on the consensus in the literature on environments in which *Vibrio* infections may thrive, the indicator uses the following thresholds:

- **Sea Surface Temperature (SST): >18°C**
- **Sea Surface Salinity (SSS): <28 PSU**

*Vibrio* suitability regions are determined using a threshold-based approach based on sea surface temperature and sea surface salinity estimates.

Areas with temperatures above **18°C** and salinities below **28 PSU** are classified as suitable for *Vibrio*.

The salinity threshold is well below the usual ranges in most of the open ocean and takes into account potential local decreases in salinity due to freshwater fluxes into the ocean, including precipitation and runoff, making it a conservative estimate.

For SST and SSS, only grid cells located within **10 km of the global coastline** are analysed. This coastal band represents areas where human exposure to *Vibrio* through direct contact with water is highest and where many aquaculture-related activities, another important source of vibriosis, take place.

### Country-Level Metrics

Results are summarised at the country level.

Two complementary metrics are reported:

- The **percentage and absolute length (km) of national coastline** showing suitable conditions.
- The **number of days per year** during which suitable conditions occur.

### Indicative Potential Health Impact

To provide an indicative estimate of potential health impact associated with environmental suitability, a conservative reference infection rate of:

```text
0.3 cases per 100,000 population
```

is applied.

Recognising substantial underreporting in routine surveillance data, reported infections are scaled by a factor of:

```text
143
```

to derive a more plausible approximation of true incidence.

This approach is intended to contextualise the potential health impact under suitable environmental conditions rather than to represent country-specific incidence.

---

## Data

- **Sea surface temperature (SST):** ESA Climate Change Initiative Level-4 GHRSST OSTIA dataset (`ESACCI-L4_GHRSST-SSTdepth-OSTIA-GLOB_CDR2`), daily, 1982–present.

- **Sea surface salinity (SSS):**
  - ORAS5 ocean reanalysis, monthly, 1982–1992.
  - CMEMS global ocean physical reanalysis (`cmems_mod_glo_phy_my_0.083deg_P1D-m`), daily, 1993–2025.

- **Coastline length:** National coastline lengths from WRI, derived from a globally consistent representation of the World Vector Shoreline at approximately 1:250,000 scale. These values are used to convert relative percentages of affected coastline into absolute lengths (km).

- **Population:** Gridded Population of the World, Version 4 (GPWv4), CIESIN (Columbia University), 30 arc-second (~1 km) spatial resolution; used to estimate population potentially exposed to *Vibrio* suitability within **100 km of suitable coastal areas**.

---

## Caveats and Limitations

The results are derived on the basis of suitable values for only two environmental factors, **SST and SSS**, and do not consider other potentially important drivers, such as globalisation, or other environmental predictors of pathogenic *Vibrio* infections, such as chlorophyll-*a* and turbidity. Reported disease case data are also not incorporated directly into the environmental suitability model.

Locally suitable SSS conditions may occur in coastal regions because of variation in local rainfall and river runoff, which can make these regions sporadically suitable for *Vibrio* infections.

The use of a U.S.-derived reference infection rate and underreporting correction is intended to provide an indicative scale of potential health impact and should not be interpreted as a direct estimate of national or regional incidence outside settings with comparable surveillance systems.

No data on recreational exposure to marine waters are available, which precludes direct estimation of individual exposure or risk.

Reported *Vibrio* cases are limited or absent in many regions because of incomplete, inconsistent, or non-existent surveillance systems. The absence of reported cases should therefore not be interpreted as an absence of risk.

Differences in temporal resolution and data sources between the early and later parts of the time series may introduce minor discontinuities. The use of consistent thresholds and spatial constraints is intended to minimise these effects, which can arise when incorporating datasets with higher spatial and temporal resolution.
