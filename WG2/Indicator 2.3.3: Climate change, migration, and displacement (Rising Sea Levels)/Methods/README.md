# Methods

This indicator estimates the population living in areas potentially exposed to **1 metre of Global Mean Sea Level Rise (GMSLR)**.

A bathtub model is used to overlay future GMSLR of 1 metre with coastal elevation grid cells to identify areas of potential inundation. These areas are then combined with gridded population data to estimate the number of people currently living in areas exposed to 1 metre of GMSLR.

## Identification of potentially inundated areas

In the first step, the **Coastal Digital Elevation Model (CoastalDEM)** was used to identify grid cells that would fall below 1 metre of GMSLR.

Grid cells meeting this criterion were classified as potentially inundated.

## Population exposure

In the second step, a gridded population dataset was overlaid with the potentially inundated areas.

This was used to estimate the population living within grid cells exposed to 1 metre of GMSLR.

The grid cells were then matched with country boundaries using the **Global Administrative Areas (GADM) Dataset, version 4.0.4**.

Grid-cell estimates were aggregated to country level to calculate the national population living in areas potentially exposed to 1 metre of GMSLR.

# Data

The indicator uses the following data sources:

- **Global Mean Sea Level Rise:** estimated global mean increases in sea level
- **Elevation:** Coastal Digital Elevation Model (CoastalDEM)
- **Population:** Hybrid gridded demographic data for the world
- **Country boundaries:** Global Administrative Areas (GADM), version 4.0.4

# Caveats and Limitations

Global mean sea level increased by approximately **0.20 metres between 1901 and 2018** and is projected to rise further, with substantial variation depending on future emissions and environmental responses.

Sea level rise also varies considerably at local and regional levels. This indicator uses global mean sea level rise and does not account for additional local processes such as **glacial isostatic adjustment** or **land subsidence**, which can substantially alter local sea level and flood risk.

Population exposure estimates can vary depending on the elevation and population datasets used, the time period considered, future emission and socioeconomic scenarios, and the analytical method.

The indicator uses **CoastalDEM at 3 arc-second, approximately 90 metre, resolution**, which is designed to reduce elevation errors associated with Shuttle Radar Topography Mission data.

Population exposure to sea level rise should not be interpreted as population displacement. People living in areas exposed to coastal risk may remain in place because of protection or adaptation measures, may be unable or unwilling to relocate, or may move into low-lying coastal areas.

Coastal protection and adaptation measures can include:

- revegetation
- land-use planning
- land reclamation
- other protection and accommodation measures

Where protection or accommodation is no longer feasible, relocation or retreat may occur. These processes are also influenced by wider economic, social, political and demographic factors.

Relocation and retreat from areas exposed to coastal risk can have a range of health consequences, including impacts on:

- mental health
- food security
- water supply
- sanitation
- infectious diseases
- injury
- access to healthcare
