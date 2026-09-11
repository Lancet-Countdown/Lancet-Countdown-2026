# Methods

This indicator estimates exposure to fire-originated fine particulate matter (PM2.5) and the associated mortality burden.

## Fire emissions and smoke dispersion

Smoke dispersion from fires is modelled at **0.2° spatial resolution** using the **System for Integrated modeLling of Atmospheric coMposition (SILAM)**.

Atmospheric emissions of fire-originated fine particles are calculated using the **Integrated System for vegetation fires (IS4FIRES)**.

The main input to IS4FIRES is satellite-observed **Fire Radiative Power (FRP)** from:

- MODIS instruments onboard the Aqua and Terra satellites
- VIIRS instruments onboard S-NPP, NOAA-20 and NOAA-21 satellites

FRP is used as a proxy for the amount of pollutants released into the atmosphere.

Fire emissions include:

- primary particulate matter, represented using three particle-size bins
- gaseous particulate matter precursors, from which secondary aerosols form during atmospheric transport

ERA5 meteorological data are combined with FRP observations to estimate the vertical profile of smoke injection.

SILAM then simulates the subsequent atmospheric:

- transport
- chemical and physical transformations
- removal processes

Hourly fire-originated PM concentrations are used to calculate annual country-average exposure estimates. These can also be weighted by population density using GPW population data.

## Calibration of fire emissions

The emission factors used to convert FRP into emission flux are calibrated separately for MODIS and VIIRS using an inverse-modelling approach.

The emission factors vary by land-use type and are optimised to:

- minimise model bias
- minimise root mean square error
- maximise correlation with observations

The optimisation uses observations of:

- aerosol optical depth from the AERONET sun photometer network
- surface PM2.5 concentrations
- surface PM10 concentrations

Because fires are not the only source of atmospheric particulate matter, fire-related PM concentrations are combined with global air-quality simulations that account for non-fire emissions and atmospheric chemical and physical processes.

Non-fire PM2.5 is also used as the background PM concentration in the mortality calculations.

The SILAM non-fire full-chemistry simulations are performed at **0.5° resolution**, while fire-originated PM2.5 is calculated at **0.2° resolution** to reflect the greater spatial variability of fire smoke.

Total PM2.5 is then calculated as the sum of fire-originated and non-fire PM2.5 and mapped to a common **0.1° grid**. This is also the resolution of the mortality data and is used to aggregate indicator estimates to country and regional levels.

## Mortality attributable to fire-originated PM2.5

Mortality attributable to fire-originated PM2.5 is estimated using the **FUSION model**.

The gridded mortality distribution incorporated in the FUSION model is based on **2019 Global Burden of Disease data**.

The 2019 gridded mortality data are used only to represent the spatial distribution of deaths. Absolute all-cause mortality is obtained from the **WHO mortality database**, which provides annual country-level mortality totals.

For the small number of countries without mortality estimates in the WHO database, Global Burden of Disease estimates are used.

For years other than 2019, mortality is estimated by scaling the 2019 mortality distribution according to relative changes in population between **2003 and 2025**, using GPW version 4.11 population data.

Mortality attributable to fires is calculated as the difference between:

- FUSION model estimates using SILAM PM concentrations **including fire emissions**
- FUSION model estimates using SILAM PM concentrations **excluding fire emissions**

The resulting gridded fire-attributable mortality estimates are then aggregated to country level.

# Data

The indicator uses the following data sources:

- **Fire Radiative Power:** VIIRS and MODIS FRP observations from the NASA Fire Information for Resource Management System (FIRMS).
- **Meteorological data:** ERA5 global atmospheric reanalysis from the Copernicus Climate Change Service Climate Data Store.
- **Land-use data:** ECOCLIMAP global land-use classification.
- **Population data:** NASA SEDAC Gridded Population of the World, Version 4.11, and Hybrid Gridded Demographic Data for the World, 1950–2020.
- **Fire-related PM2.5:** daily surface concentrations of fire-related PM2.5 from the Finnish Meteorological Institute.
- **Mortality distribution:** Global Burden of Disease 2019 gridded mortality data.
- **Mortality model:** FUSION model used to calculate mortality from annual PM2.5 concentrations.
- **Country mortality:** WHO Global Health Estimates 2021, Deaths by Cause, Age, Sex, by Country and by Region, 2000–2021.

# Caveats and Limitations

MODIS fire products provide one of the longest homogeneous global fire time series, but low-orbit satellite observations are available at individual locations only a few times per day.

Fires may therefore be missed when:

- they are too small
- cloud cover obscures the scene
- the satellite observation geometry limits detection

The probability of missed detections varies by region and season. It may range from approximately **20–30% in Europe during summer** to as high as **70% in some equatorial regions**.

MODIS detection sensitivity also varies with observation conditions. The smallest fires detectable at night under clear-sky conditions and near nadir are around **4 MW**, while the detection limit can approach **40 MW** near the edge of the satellite swath during daytime.

Changes in the Aqua and Terra satellite orbits after 2022 can also affect retrieval timing and observation geometry. These changes are addressed by accounting explicitly for the diurnal variation in fire intensity.

VIIRS retrievals are subject to similar omission errors but have higher spatial resolution and sensitivity than MODIS. The greater sensitivity can also increase false-positive detections caused by sources such as industrial exhausts or reflected sunlight.

Masks are therefore used to reduce repeated false detections at fixed locations.

Using both MODIS and VIIRS introduces an additional challenge in maintaining a consistent time series because the two instruments have different sensitivities and observational characteristics. Indicator values are therefore provided using both instrument types.

The inverse calibration of FRP-to-PM emission factors partly compensates for fires missed by satellite observations. Because smoke plumes integrate emissions from multiple fires and persist longer in the atmosphere than individual FRP observations, calibration against aerosol optical depth and surface PM observations can partly offset missing fire detections.

However, this remains an imperfect correction.

Satellite FRP observations do not distinguish between wildfires and other types of vegetation fires, including agricultural or prescribed burning. The indicator therefore includes smoke from different fire types unless they are identified as persistent non-fire heat sources and masked by the processing algorithm.

The spatial distribution of mortality within countries is based on 2019 mortality data in the FUSION model. This spatial distribution may not remain constant in other years, although annual WHO country-level mortality totals account for much of the temporal change.

Finally, the analysis requires multiple datasets to be remapped onto a common **0.1° grid**. This can introduce error, particularly for small countries represented by only one or a small number of grid cells.

In these countries, gridded population estimates may substantially underestimate the true population. This can lead to underestimation of population exposure or overestimation of relative mortality when country-level WHO mortality totals are divided by underestimated gridded population values.
