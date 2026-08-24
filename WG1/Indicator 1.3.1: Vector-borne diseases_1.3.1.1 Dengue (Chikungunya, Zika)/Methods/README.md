# Methods

Socio-environmental and climatic changes are significantly reshaping the distribution and transmission dynamics of arboviral diseases, underscoring the rapidly accelerating scale and urgency of this public health crisis. This is especially evident for *Aedes*-borne arboviruses, including dengue, chikungunya, and Zika, which have overlapping vectors and geographic distributions.

As of 2024, WHO recorded a total of 14.4 million dengue cases, the highest ever in a 12-month period, with more than 11,000 dengue-related deaths affecting over 100 countries on all continents. Chikungunya and Zika have shown similarly concerning upward trends, pointing to a wider global risk of *Aedes*-borne diseases.

The rapidly escalating threat posed by arboviral diseases highlights the urgent need for upscaled surveillance efforts and integrated vector control and climate adaptation strategies.

## Climatic Drivers and *Aedes* Vector Dynamics

Transmission of these arboviruses depends critically on the presence of competent female *Aedes* vectors, notably *Aedes aegypti* (*Stegomyia aegypti*) and *Aedes albopictus* (*Stegomyia albopicta*).

The key climatic drivers—air temperature, precipitation, and relative humidity—shape:

- Habitat suitability
- Geographic range limits
- Vector life-history traits
- Population dynamics
- Host-seeking activity
- Biting rates

Climate additionally governs the extrinsic incubation period (EIP), altering pathogen replication kinetics and overall vectorial capacity. Therefore, quantifying the thermal biology of the vectors and coupling this to climate data is central to predicting and mitigating the spread of these arboviruses.

## *Aedes* Life-Cycle Model

The life cycles of *Ae. aegypti* and *Ae. albopictus* share fundamental similarities with other mosquito species.

Females oviposit predominantly in water-filled artificial containers. Rainfall cues egg hatching, followed by larval development through four instars, during which larvae feed on organic matter within aquatic habitats and subsequently develop into pupae.

After emergence, adult sex ratios are approximately balanced (~50:50), with a short post-emergence resting period preceding host-seeking. Females mate and then disperse to obtain blood meals, after which they locate suitable aquatic sites and lay eggs within days.

Environmental thresholds in temperature and photoperiod regulate oviposition timing. Importantly, *Ae. albopictus* can produce diapausing eggs (overwintering) when conditions are unfavourable, enabling persistence through temperate winters until suitable spring conditions return.

Across stages, transitions and resulting mosquito population abundance are driven by a complex interplay of climatic variables such as:

- Temperature
- Precipitation
- Daylength

and socioeconomic variables such as:

- Human population density

Building upon methodologies established in previous studies, we use a six-stage differential equation model describing the population dynamics of *Aedes albopictus*.

The model comprises three aquatic stages:

- Egg
- Diapausing egg
- Juvenile stage (larval stage + pupal stage)

and three aerial stages:

- Emerging adult
- Blood-fed adult
- Ovipositing adult

For simplification, resting and mating behaviours of emerging adults are integrated into the adult emergence stage, and larval and pupal stages are aggregated into a single juvenile class due to limitations in data availability and minimal improvements in model fit when separating these stages.

The thermal biology forcing on the life cycle of the vector involves a system of differential equations describing the state space in the immature and mature life stages of the vectors.

Full details of the model equations, parameter definitions, and simulation framework for calculating *Aedes albopictus* abundance can be found in Barman et al.

## Climate Data

For the 2025 dengue indicator analysis, near-surface air temperature (°C) and total precipitation (mm) data were derived from the fifth-generation atmospheric reanalysis (**ERA5**) provided by the European Centre for Medium-Range Weather Forecasts (**ECMWF**).

Daily:

- Mean temperature
- Minimum temperature
- Maximum temperature
- Total precipitation

were extracted from the hourly **ERA5-Land** dataset.

The gridded ERA5-Land hourly climate dataset was converted to daily estimates at a spatial resolution of **0.5°**, which approximately covers an area of 55 km at the equator.

All temporal and spatial aggregations were performed using **Climate Data Operators (CDO)** software.

## Population Data

Human population data up to 2021 at a resolution of **0.5°** were obtained from the third simulation round of the **Inter-Sectoral Impact Model Intercomparison Project (ISIMIP3a)**.

To derive population estimates for 2022–2025, linear interpolation using a Generalised Linear Model (GLM) was performed by fitting a log-linear trend to the most recent historical window and extrapolating predicted annual population values for the missing years.

## Differences Between *Aedes aegypti* and *Aedes albopictus*

While the modelling approach is similar for both *Aedes aegypti* and *Aedes albopictus*, the *Aedes aegypti* life-cycle model omits diapause dynamics because this species does not exhibit significant photoperiod sensitivity.

## Vectorial Capacity

The simulated abundance of blood-fed *Aedes aegypti* and *Aedes albopictus* mosquitoes is used to estimate **Vectorial Capacity (VC)**, which measures the ability of a vector to transmit the virus.

> **VC=  (m a^2 (T)bc(T)  exp{(-μ(T))/(PDR (T) )})/( μ(T) )   **

The Vectorial Capacity formulation incorporates parameters representing:

- Mosquito biting rate, or the inverse of gonotrophic cycle duration, i.e. the time between two consecutive blood meals
- Vector competence, representing the proportion of mosquitoes that become infectious after infection with dengue virus
- Adult female mosquito mortality rate
- Viral development rate, representing the inverse of the duration required for development of the virus following mosquito infection
- Approximate number of simulated mosquitoes in the vicinity of a single human

For dengue, Vectorial Capacity is computed independently using the abundance of both *Aedes aegypti* and *Aedes albopictus* in overlapping regions of:

- The Americas
- Asia
- Australia

For chikungunya, only *Aedes albopictus* abundance estimates are used.

For Zika, only *Aedes aegypti* abundance estimates are used.

## Basic Reproduction Number

Finally, the **basic reproduction number (R₀)** is calculated from Vectorial Capacity.

R₀ is defined as the expected number of susceptible hosts that become infected due to a single primary non-immune infected host in an entirely susceptible population.

> **R_0 = (VC .  β)/r**

The calculation incorporates:

- The recovery rate of infected humans, or the duration of the infectious period
- The probability of a susceptible host becoming infected when bitten by an infectious mosquito
- The mosquito-to-human ratio

The mosquito-to-human ratio is central to the R₀ calculation and is estimated using the approach described in Colón-González et al.

Because the model provides results in terms of:

- Mosquitoes per hectare for *Aedes albopictus*
- Mosquitoes per breeding site for *Aedes aegypti*

a correction factor is used to scale the mosquito abundance according to the population of individual grid cells.

The scaling parameters were estimated by comparison with R₀ data available for a subset of spatiotemporal points.

Finally, spatial and temporal aggregation is performed to obtain annually aggregated R₀ values by:

- Country
- WHO region
- HDI group

using the `raster` R package.


## Data

- **Mean, maximum and minimum 2 m air temperature and total precipitation (daily and monthly):** ERA5-Land, European Centre for Medium-Range Weather Forecasts (ECMWF).
- **Annual population:** Inter-Sectoral Impact Model Intercomparison Project (ISIMIP3a).

---

## Caveats and Limitations

The basic reproduction number (R₀) presented here mainly indicates the role of natural forcing and does not capture impacts from environmental degradation, mobility, and immunity in the population.

The indicator for mosquito dynamics has been validated and describes vector dynamics and activity well (Barman et al.). Further validation against human cases is ongoing. While immunity plays a major role in highly affected regions, such mechanisms are largely absent in areas where disease transmission is emerging and more unstable.

The proposed mechanistic model, while reliable, predominantly depends on climatic factors for explaining disease dynamics. However, it excludes a key climatic variable, **humidity**, which has recently been shown to significantly affect mosquito physiology and subsequently the dynamics of *Aedes*-borne diseases.

Additionally, the model does not incorporate critical socioeconomic factors such as:

- Human mobility patterns
- Social interactions

both of which can significantly influence disease transmission.

Furthermore, the indicator exclusively focuses on two primary vectors:

- *Aedes aegypti*
- *Aedes albopictus*

and their spatial distribution, while other *Aedes* species that may be important for dengue transmission are not included.

This limitation primarily arises from insufficient data describing how climate interacts with the physiology of these less-studied species, which limits the development of robust transmission suitability models.

The model also computes **R₀ independently for both vectors** and therefore does not provide a comprehensive assessment of overall transmission risk in regions where the abundance of *Aedes aegypti* and *Aedes albopictus* overlaps.

It is important to emphasise that the **R₀ values predicted by this model represent potential outbreak risk rather than actual transmission rates**.

Real-world R₀ values result from complex interactions between socioeconomic conditions and climatic factors, which are not fully captured by the current model.
