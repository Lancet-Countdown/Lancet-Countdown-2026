# Methods

Global atmospheric reanalysis data are used to estimate air pollution exposure in regions where monitoring information is limited or unavailable.

Population exposure to mineral dust surface concentrations, expressed as **PM10 dust**, is estimated using an ensemble product derived from four global aerosol reanalysis datasets.

All datasets are converted to a common unit of **µg/m³** and processed onto a common **0.1° × 0.1° grid**.

The four reanalysis estimates are then averaged to produce a multi-model ensemble PM10 dust product. The resulting dataset is available at:

- daily intervals
- monthly intervals
- annual intervals

## Population-weighted exposure

Gridded PM10 dust concentrations are intersected with gridded population data.

Country-level population-weighted exposure is then calculated by averaging PM10 dust concentrations across all grid cells within each country, with each grid cell weighted according to its population.

This gives greater weight to concentrations in areas where more people live and provides an estimate of population exposure to mineral dust at country level.

# Data

The indicator uses the following data sources:

- **CAMS-RA:** Copernicus Atmosphere Monitoring Service Reanalysis
- **NAAPS-RA:** Naval Research Laboratory Navy Aerosol Analysis and Prediction System ReAnalysis
- **NASA MERRA-2:** NASA Modern-Era Retrospective Analysis for Research and Applications, Version 2
- **SILAM:** Finnish Meteorological Institute System for Integrated modeLling of Atmospheric composition
- **Population:** Gridded Population of the World, Version 4, 2021, from the Socioeconomic Data and Applications Center, National Aeronautics and Space Administration

# Caveats and Limitations

Each reanalysis dataset has its own limitations.

Model predictions depend on how well physical processes are represented and on the quality of the input parameters.

Satellite observations incorporated into the reanalysis products are limited by:

- temporal coverage, typically once or twice per day
- cloud cover
- limited information on the vertical distribution of aerosols

Ground observations are also limited by their geographic coverage.

Satellite aerosol observations are mainly optical measurements and provide limited constraints on the vertical profile of aerosols. This creates uncertainty when converting satellite information into surface-level mass concentrations that are intended to represent human exposure.

The atmospheric composition modelling community continues to improve the representation of sand and dust storms. Ongoing improvements include:

- more detailed dust source mapping
- improved representation of dust particle-size evolution
- improved representation of dust optical properties
- better representation of local-scale and convective sand and dust storms

The ensemble approach is designed to reduce some of the limitations associated with individual reanalysis products.

Evaluation against ground-based and satellite observations has shown that the reanalysis ensemble performs better than the individual models. Comparisons between datasets also help identify the strengths and weaknesses of each individual reanalysis product.
