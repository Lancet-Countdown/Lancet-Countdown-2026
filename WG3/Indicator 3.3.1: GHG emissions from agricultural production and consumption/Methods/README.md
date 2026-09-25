# Methods

This indicator tracks **greenhouse gas (GHG) emissions from agricultural production and consumption** across major animal products and crops, as well as numerous fruits, vegetables, nuts, pulses, legumes and other crops.

Although most crops have substantially lower GHG emission intensities than animal products, their inclusion provides a more complete picture of the agricultural commodities used in the global food system.

The methods used to estimate GHG emissions from food products are described separately for:

- Livestock products
- Crop products

## Livestock Products

GHG emission intensities for livestock commodities were calculated globally at **5 arc-minute spatial resolution**, using the year **2000** as the baseline.

National and regional average emission intensities were calculated by weighting grid-cell-level emission intensities by the production of each livestock product.

The following emission sources are included:

- Manure deposited on pasture
- Manure management
- Enteric fermentation
- Fertiliser and manure application to cropland and grassland used for livestock feed
- Methane emissions from rice used in livestock diets
- Peatland drainage associated with feed production

Livestock diets include both grazing and feed crops.

### Livestock Species

| Ruminants | FAO Item Code | Non-ruminants | FAO Item Code |
|---|---:|---|---:|
| Cattle, dairy | 960 | Chicken, broilers | 1053 |
| Cattle, non-dairy | 961 | Chicken, layers | 1052 |
| Buffaloes | 946 | Swine, market | 1049 |
| Goats | 1016 | Swine, breeding | 1079 |
| Sheep | 976 |  |  |

Livestock categories also include secondary products where data are available.

These include:

- **Cattle products:** beef, milk, buffalo meat and buffalo milk
- **Sheep and goat products:** meat and milk
- **Poultry products:** meat and eggs from chickens, geese, ducks and turkeys
- **Swine products:** pork and processed products such as ham and bacon

## Direct Livestock Emissions

GHG emissions from **enteric fermentation** and **manure management** are combined with emissions from manure deposited on pasture.

Emissions are initially expressed as tonnes of carbon dioxide equivalent per **tropical livestock unit (tLU)** and converted to livestock head using the following conversion factors:

| Livestock category | Head per tLU |
|---|---:|
| Bovine: buffalo, dairy cattle and non-dairy cattle | 1.43 |
| Small ruminants: goats and sheep | 10 |
| Poultry: chicken | 100 |
| Swine | 5 |

Emissions per head are divided into world regions.

For ruminants, emissions are further differentiated by livestock production system, incorporating differences in climate and farming practices ranging from rangeland systems to feedlots.

Country-level emission estimates are calculated by averaging across the relevant region-system combinations within each country, weighted by livestock numbers.

## Grazing and Feed Emissions

Emissions from grazing include synthetic fertiliser applied to grassland and associated nitrous oxide emissions.

Feed requirements are incorporated using livestock feeding data and accounting for international trade in feed crops.

Emissions from feed crops and grazed grasslands are added to direct livestock emissions from:

- enteric fermentation
- manure management
- manure deposited on pasture

This produces total GHG emission rates for each livestock species for the baseline year **2000**.

Emission intensities for subsequent years are projected from this baseline using FAO-derived ratios representing changes in production efficiency.

Final emission intensity values for each livestock commodity, including eggs, meat and milk, are calculated by dividing total CO2e emissions by the corresponding output of milk, meat or eggs per animal.

## Crop Products

Crop-related emissions include emissions from:

- synthetic fertiliser application
- manure application
- rice cultivation
- cultivation of organic soils

Baseline emissions are available for **172 crops** for the year 2000.

Crops classified as fodder or fibre are excluded, leaving **147 crops directly consumed by humans**.

Crops used for livestock feed are excluded from the crop-emissions category because their emissions are incorporated into the emission intensity of animal-based foods.

## Land Use Change Emissions

Crop-specific land use change (LUC) emissions and associated emission intensities are estimated for **2000, 2005, 2010 and 2020**.

These estimates combine:

- annual land use change CO2 emissions associated with conversion between cropland, pasture and natural vegetation
- spatial crop area and production data

For each crop \(i\), year \(n\), and grid cell \(l\), the cropland area share is used to allocate total land use change emissions associated with conversion from forest or pasture to cropland:

```math
E_{i,n,l}
=
P_{i,n,l}
\times
E^{tot}_{n,l}
```

where:

- \(E_{i,n,l}\) = LUC-related CO2 emissions allocated to crop \(i\)
- \(P_{i,n,l}\) = share of cropland area occupied by crop \(i\)
- \(E^{tot}_{n,l}\) = total LUC-related CO2 emissions associated with conversion to cropland in the grid cell

Crop areas are aligned with the cropland distribution used in the underlying land-use dataset to ensure a consistent land-use reference across datasets.

Crop-specific LUC emission intensity is then calculated by dividing crop-specific LUC emissions by dry-matter crop production:

```math
EI_{i,n,l}
=
\frac{E_{i,n,l}}
{\text{Crop Production}_{i,n,l}}
```

where emission intensity is expressed as:

```text
tonnes CO2 / tonne dry matter crop
```

Crop production values are converted to dry-matter weights using crop-specific conversion factors.

## Annual Land Use Change Time Series

To construct an annual time series between the available gridded crop datasets for **2000, 2005, 2010 and 2020**, crop area and production are scaled using annual FAOSTAT crop statistics.

Country-level scaling factors are applied to gridded crop area and production distributions.

The spatial distribution of crops within countries is assumed to remain proportional within the following periods:

- 2000–2007, based on 2005 gridded data
- 2008–2015, based on 2010 gridded data
- 2016–2023, based on 2020 gridded data

Annual crop-specific LUC emissions are calculated by allocating annual land use change emissions according to the scaled crop-area shares.

Emission intensity is calculated annually at grid-cell level and then aggregated to obtain national crop-specific time series.

The LUC component is still being finalised and validated for inclusion in the main report analysis.

## Production Emissions, 2001–2023

GHG emission intensity is not assumed to remain constant over time.

For both livestock and crop products, baseline emission intensities are scaled using annual FAO emission-intensity trends.

FAO provides GHG emission intensity estimates for:

- animal commodities
- broad crop categories
- rice separately from other crops because of its substantial methane emissions

Country-level FAO values can be highly variable, so **regional values** are used.

For each year, the percentage change relative to the year 2000 is applied to the baseline commodity-specific emission intensities.

Where a scaling factor is missing, it is assumed to equal **1**, corresponding to constant emission intensity.

Where a commodity-specific intensity value is missing for a country, the regional average for that commodity and year is used.

This has relatively little effect because most missing values occur in countries with very low or no production of the relevant commodity.

## Consumption Emissions

GHG emissions associated with agricultural commodity consumption are estimated using FAO production and international trade data.

The basic relationship is:

```math
\text{Consumption}
=
\text{Production}
+
\text{Imports}
-
\text{Exports}
```

For each commodity, national production in tonnes is converted to CO2e using the corresponding production emission intensity.

Secondary commodities are converted into **primary commodity equivalents** before trade flows are calculated.

### Example: Wheat Product Equivalences

| Item | FAO Item Code | Primary Commodity | Conversion Factor |
|---|---:|---|---:|
| Bran of wheat | 17 | Wheat | 1.03 |
| Bread | 20 | Wheat | 0.89 |
| Bulgur | 21 | Wheat | 1.05 |
| Pastry | 22 | Wheat | 0.89 |
| Wheat | 15 | Wheat | 1.00 |
| Wheat and meslin flour | 16 | Wheat | 1.03 |

The resulting primary-equivalent quantities are converted to GHG emissions using the relevant emission intensity.

Trade balances are adjusted to account for commodities that may be:

1. produced in one country,
2. processed in another country, and
3. finally imported into a third country.

This allows agricultural emissions to be traced from the original producer to the final consuming country.

# Data

Production, trade and broad emissions-trend data are obtained from the **Food and Agriculture Organization (FAO)**.

These data are processed to produce trade-corrected, commodity-specific GHG emission estimates.

The main data inputs are:

- **National annual production of crop and animal products:** FAOSTAT
- **Annual bilateral trade in crop and animal products:** FAOSTAT
- **Baseline year-2000 emission intensities for crop and animal products:** NERC Environmental Information Data Centre
- **Land use change emissions:** BLUE bookkeeping model
- **Spatial crop area and production:** MapSPAM
- **Annual crop statistics:** FAOSTAT

# Caveats and Limitations

In this indicator, **consumption** refers to the net balance of agricultural products entering a country during a given year:

```math
\text{National Supply}
=
\text{National Production}
+
\text{Net Imports}
```

where:

```math
\text{Net Imports}
=
\text{Imports}
-
\text{Exports}
```

Consumption therefore refers to **national food supply** rather than the quantity of food actually consumed by individuals.

The indicator currently focuses on emissions associated with agricultural production and does not include additional emissions associated with:

- food transportation
- food processing
- storage
- decomposition of food waste

The core production and consumption estimates do not include emissions from conversion of land to agriculture, such as deforestation, although emissions from cultivation of organic soils, including peatlands, are included. A land use change component is being developed separately.

For livestock, some FAO stock data are missing for specific countries and years. For example, non-dairy cattle data for Somalia are missing for **2000–2011**.

Grazing-emission data are also unavailable for some small islands and are therefore imputed using regional average values.

The emission factors used in this indicator differ from FAO estimates.

For livestock, differences arise because emissions from enteric fermentation, manure management and manure deposited on pasture are calculated using a more detailed combination of regions and livestock production systems.

For crops, differences arise from assumptions about synthetic nitrogen application, manure nitrogen inputs and the emissions factors applied.

Consumption-based agricultural emissions are derived directly from FAO trade data, reorganised into producer-to-consumer trade flows.

Production estimates, in contrast, are based on scaling baseline year-2000 emission intensities over time.

Across all years, total global consumption-emission estimates are within approximately **1%** of production-emission estimates.

Food quantities included in the analysis also contain food that is subsequently lost or wasted during production, transportation or consumption.

The indicator does not include additional emissions generated by the decomposition of food waste.

Results for **small and developing countries**, particularly Small Island Developing States and countries in sub-Saharan Africa, should be interpreted with caution because agricultural commodity tracking is less complete in these settings.
