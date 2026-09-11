# Methods

The Fire Danger Risk Indicator is derived from **Fire Weather Index (FWI)** parameters calculated using ECMWF ERA5 atmospheric reanalysis data at a spatial resolution of **0.25°**, as provided by the Copernicus Emergency Management Service (CEMS) for the European Forest Fire Information System (EFFIS), version 4.1.

Because of the relatively coarse spatial resolution and the centre-based country overlay approach, some very small countries and territories, particularly some Small Island Developing States (SIDS), cannot be assigned valid grid cells. The final dataset therefore covers **187 countries**.

FWI values are classified into six **Fire Danger Index (FDI)** categories:

- **Very low:** <5.2
- **Low:** 5.2–11.2
- **Moderate:** 11.2–21.3
- **High:** 21.3–38.0
- **Very high:** 38.0–50.0
- **Extreme:** ≥50.0

## Fire danger exposure

Fire danger exposure is assessed by calculating the **average annual number of days classified as very high or extreme fire danger**.

Changes in exposure are estimated by comparing:

- **2006–2015**
- **2016–2025**

Population-weighted exposure estimates are generated using gridded population data to assess wildfire risk at the population level.

To reduce potential bias from urban heat sources unrelated to wildfires, grid cells with population densities greater than **400 persons per km²** are excluded before aggregation.

## Wildfire exposure

Wildfire exposure is also assessed using satellite-observed active fire detections.

Active fire observations are aggregated to a global **0.1° × 0.1° grid** and spatially joined with population data to estimate **person-days of exposure**.

Cloud cover information is incorporated to reduce underestimation of fire occurrence caused by cloud obscuration.

National-level wildfire exposure estimates are expressed as changes in the **mean annual number of person-days exposed to wildfire** between the comparison periods.

# Data

The indicator uses the following data sources:

- **Fire Weather Index:** historical FWI data, version 4.1, produced by the Copernicus Emergency Management Service for the European Forest Fire Information System.
- **Population:** NASA Socioeconomic Data and Applications Center (SEDAC) Gridded Population of the World, Version 4 (GPWv4).
- **Active fire observations:** MODIS Fire Radiative Power observations, MOD14/MYD14, from the NASA Fire Information for Resource Management System (FIRMS).
- **Cloud cover:** EarthEnv Global 1 km Cloud dataset.

# Caveats and Limitations

The Fire Weather Index represents meteorological conditions that are favourable for fire occurrence, but it does not fully capture real-world wildfire dynamics.

Human influences such as land-use change, urban expansion, fire suppression practices and human-caused ignitions are not explicitly included.

The index also does not account for the effects of increasing atmospheric CO₂ concentrations on vegetation growth and fuel availability, or for possible climate-driven changes in lightning frequency.

Wildfire exposure estimates have additional limitations. Satellite-detected active fire observations do not distinguish between wildfires and prescribed or agricultural burning.

Although the 0.1° spatial resolution provides consistent global coverage, smaller-scale differences in wildfire exposure may not be fully captured.

Local variation in topography, vegetation composition and socioeconomic factors that influence wildfire vulnerability and preparedness are also not represented.
