# Urban Greenness and Blue Space

## Methods

### Urban Centre Selection

Urban centre boundaries were defined using the **Global Human Settlement (GHS) Programme of the European Commission**, which combines demographic and remote-sensing data to identify more than 10,000 urban centres worldwide.

The greenness analysis included urban centres with populations greater than **500,000**. For countries without an urban centre meeting this threshold, the most populous city was selected where possible.

The final analysis included **1,042 urban centres across 174 countries**.

Due to missing information in the GHS dataset, **23 countries**, predominantly small island states, were not represented in the analysis.

### Population Data

Population data were obtained from the **Joint Research Centre (JRC) Global Human Settlement Layer (GHSL)**.

The GHSL models the spatial distribution of population globally at approximately **100 m × 100 m resolution**.

### Normalized Difference Vegetation Index

Urban greenness was estimated using the **Normalized Difference Vegetation Index (NDVI)**.

NDVI is a widely used satellite-based measure of vegetation and is calculated from near-infrared and visible red radiation.

NDVI values range from **−1 to +1**:

- Values below **0** generally represent water bodies.
- Values close to **0** generally indicate areas with little or no vegetation.
- Higher positive values indicate increasing vegetation density or greenness.
- Values approaching **1** represent areas with dense vegetation.

Satellite imagery was obtained from the **Landsat programme**, jointly operated by the United States Geological Survey (USGS) and the National Aeronautics and Space Administration (NASA).

Landsat provides observations of the Earth's surface at approximately **30 m spatial resolution** every 16 days.

### Water Masking

Permanent water pixels were excluded from NDVI calculations using the **JRC Global Surface Water dataset**.

This prevents permanent water bodies from influencing estimates of urban vegetation.

### Seasonal NDVI

To account for seasonal variation in vegetation, NDVI was calculated separately for four periods during each year:

- **Winter:** 1 December of the previous year to 28 February
- **Spring:** 1 March to 31 May
- **Summer:** 1 June to 31 August
- **Autumn:** 1 September to 30 November

Season labels follow the **Northern Hemisphere convention**.

NDVI was calculated for each year from **2015 to 2025** using Landsat 8 imagery.

### Greenness Metrics

Four greenness metrics were calculated for each urban centre and year:

1. **Peak NDVI** – maximum NDVI across the four seasons.
2. **Annual mean NDVI** – mean NDVI across the four seasonal estimates.
3. **Population-weighted peak NDVI** – peak NDVI weighted according to the population distribution within the urban centre.
4. **Population-weighted mean NDVI** – annual mean NDVI weighted according to the population distribution within the urban centre.

### Population-Weighted NDVI

Population-weighted NDVI was calculated by multiplying the NDVI value for each **100 m × 100 m population grid cell** by the population residing in that cell.

The weighted values were summed across the urban area and divided by the total population:

**Population-weighted NDVI = Σ(NDVI × Population) / Σ(Population)**

This approach gives greater weight to vegetation conditions experienced in more densely populated parts of each urban centre.

The following population datasets were used:

- **2015 population:** applied to NDVI estimates for 2015–2019
- **2020 population:** applied to NDVI estimates for 2020–2024
- **2025 population:** applied to NDVI estimates for 2025

### Greenness Classification

Urban centres were classified into six categories according to their **population-weighted peak NDVI**.

| Level of Greenness | Population-Weighted Peak NDVI |
| --- | ---: |
| Very Low | < 0.20 |
| Low | 0.20–0.29 |
| Moderate | 0.30–0.39 |
| High | 0.40–0.49 |
| Very High | 0.50–0.59 |
| Exceptionally High | ≥ 0.60 |

### Blue Space

Blue spaces were identified using the same water mask used to exclude water pixels from the NDVI analysis.

For each urban centre, blue-space coverage was calculated as the **percentage of the urban area covered by water bodies**.

Because updated blue-space data were not yet available in Google Earth Engine, the reported blue-space estimates are based on **2020 data**.

For urban centres extending beyond coastlines, portions of the ocean may fall within the defined urban boundary. Consequently, **Small Island Developing States (SIDS)** may show relatively high percentages of blue space compared with inland cities because of their geography and the inclusion of coastal waters.

### Subgroup Analyses

Additional analyses were conducted according to:

- **Human Development Index (HDI) category**
- **Köppen climate classification**
- **Lancet Countdown regional country groupings**
- **World Health Organization (WHO) region**

### Software

**Google Earth Engine (GEE)** was used to generate the satellite-derived data used in the analysis.

The **R statistical programming language** was used for data processing, management, analysis, and calculation of the four NDVI metrics.

## Updates Introduced in 2026

The methodological improvements introduced in the 2025 report were retained for the 2026 analysis.

These include:

- Use of higher-resolution population data.
- Removal of permanent water pixels from NDVI estimates using global surface-water data.
- Reporting of 2020 blue-space coverage for all available urban centres.
- Continued use of population-weighted measures of urban greenness.

The land-cover dataset used to estimate blue-space coverage had not yet been updated in Google Earth Engine at the time of analysis. Consequently, the blue-space indicator was not updated beyond **2020**.

A future update is planned to include **2025 blue-space estimates** and comparisons between 2020 and 2025 once updated data become available.

For the greenness analysis, **2025 NDVI values were compared with the 2015–2017 baseline period**. This period is centred around the Lancet Countdown's 2016 baseline while using additional years to reduce the influence of year-to-year anomalies.

## Data

The analysis uses the following datasets:

- **Global Human Settlement Programme (GHS)** – used to define urban centre boundaries.
- **JRC Global Human Settlement Layer (GHSL)** – used for gridded population estimates.
- **Landsat satellite imagery** – used to calculate NDVI and urban greenness.
- **JRC Global Surface Water dataset** – used to identify and mask permanent water bodies.
- **MODIS land-cover dataset** – used in the assessment of urban land-cover characteristics.
- **Köppen Climate Classification System** – used to classify cities by climate region.
- **Human Development Index (HDI)** – used for development-level subgroup analyses.

## Caveats and Limitations

1. **NDVI does not measure green-space quality**

   Although NDVI is widely used to measure vegetation and urban greenness, it cannot distinguish the quality or function of green spaces.

   For example, NDVI cannot differentiate between:

   - A managed public park and an unmanaged vacant lot.
   - Forests, grasslands, shrubs, and other vegetation types.
   - Publicly accessible and inaccessible green spaces.
   - Green spaces with different levels of safety, maintenance, or amenities.

2. **NDVI is a measure of vegetation rather than direct human exposure**

   Population-weighted NDVI improves the representation of greenness around populated areas, but it does not directly measure individual access to, use of, or interaction with green spaces.

3. **Urban centre coverage is incomplete**

   The analysis includes 1,042 urban centres across 174 countries. Some countries, particularly small island states, could not be represented because suitable urban-centre data were unavailable.

4. **Blue-space estimates are based on 2020 data**

   Blue-space coverage could not be updated to 2025 because updated land-cover information was not yet available through Google Earth Engine.

5. **Coastal urban boundaries may include ocean areas**

   Urban boundaries that extend beyond the coastline may include coastal waters or ocean pixels. This can result in relatively high estimates of blue-space coverage for coastal cities and Small Island Developing States.

6. **Satellite-based greenness has known limitations**

   NDVI is a remote-sensing measure of vegetation density and does not directly capture the social, ecological, or health-promoting characteristics of urban green spaces.

   Nevertheless, previous research has demonstrated that NDVI performs reasonably well compared with qualitative assessments of green environments, and higher NDVI has been associated with several health outcomes, including improved birth outcomes, increased physical activity, lower mortality, and lower levels of depression.

