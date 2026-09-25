# Methods

## Environmentally Extended Multi-Regional Input-Output Analysis

There are two approaches to measuring health impacts from air pollution:

- **Production-based accounting**, sometimes referred to as territorial-based accounting, attributes health impacts to the region where the pollution occurs.
- **Consumption-based accounting** attributes health impacts to the region whose consumption of goods and services drove the pollution emissions.

Since both CO2 emissions through climate change and air pollution directly are detrimental to human health, understanding responsibility for emissions and associated health impacts across borders is important in a globalised world.

This indicator estimates **PM2.5-related premature deaths embodied in international trade** and calculates national PM2.5-related mortality from a consumption perspective.

This allows responsibility for emissions and their associated environmental and human health consequences to be distributed across countries for international environmental policy analysis.

Environmentally Extended Multi-Regional Input-Output (**EEMRIO**) analysis is used to calculate consumption-based health impacts.

EEMRIO analysis reflects production and consumption structures and interdependencies between economic sectors across regions. The relationship between final use and health impacts is estimated using the **Leontief inverse matrix**:

```math
C = E \cdot L \cdot F
  = E \cdot (I-A)^{-1} \cdot F
```

where:

- \(C\) = total consumption-based PM2.5-related deaths
- \(E\) = row vector of production-based death intensity, defined as deaths per unit of output
- \(F\) = vector of final demand
- \(L\) = Leontief inverse matrix
- \(I\) = identity matrix
- \(A\) = technical coefficient matrix describing inter-sectoral and inter-regional flows per unit of output

Consumption-based accounting includes deaths associated with domestic final consumption and deaths caused by production embodied in imports.

Production-based accounting instead measures health impacts resulting from PM2.5 emissions within national territory.

The relationship can also be expressed as:

```math
C_{CBD}
=
C_{PBD}
-
C_{exp}
+
C_{imp}
```

where:

- \(C_{CBD}\) = consumption-based PM2.5 emission-related deaths
- \(C_{imp}\) = deaths embodied in imports
- \(C_{PBD}\) = production-based deaths from PM2.5 emissions
- \(C_{exp}\) = deaths embodied in exports

## Production-based PM2.5 Death Inventory

The analysis constructs a **production-based inventory of PM2.5-related deaths** by linking PM2.5 emissions to sectoral and regional health impacts through atmospheric transport modelling.

The approach follows the methodology used in **Indicator 3.2.1**.

Production-based PM2.5 exposure estimates are derived from the **GAINS model (Greenhouse Gas – Air Pollution Interactions and Synergies)**.

GAINS provides sectoral source contributions to annual mean exposure to ambient PM2.5, capturing both:

- primary emissions
- secondary particle formation

## Consumption–Production–Receptor Mapping

The health impact assessment follows a **consumption–source (production)–receptor mapping framework**.

First, consumption-based PM2.5-related deaths are calculated using EEMRIO analysis, directly mapping final consumption in each region to associated premature deaths through the input-output structure.

This directly traces deaths through economic production and consumption networks.

Second, atmospheric transport modelling transfers PM2.5-related deaths from production or source regions to receptor regions, accounting for long-range pollution transport.

The final PM2.5-related death flow is represented using a **three-dimensional transfer matrix**:

1. **Consumption-based dimension** — attributes deaths to consuming regions
2. **Production-based dimension** — attributes deaths to producing or source regions
3. **Receptor-based dimension** — attributes deaths to exposed populations

Summing across different dimensions produces the corresponding transfer matrices under the different accounting frameworks.

## Linking with PM2.5 Mortality

To map consumption-based PM2.5 deaths, the production-based inventory of PM2.5 deaths, and deaths created through atmospheric transport, the following relationship is used:

```math
d_{i,j,k}
=
\left(
\frac{Tr_{i,j}}
{\sum_i Tr_{i,j}}
\right)
d_{j,k}
```

where:

- \(Tr_{i,j}\) represents the economic flow from consumption region \(i\) to production region \(j\)
- \(d_{j,k}\) represents the transfer of deaths through atmospheric transport from production region \(j\) to receptor region \(k\)
- \(d_{i,j,k}\) represents PM2.5-associated deaths occurring in receptor region \(k\), caused by production in region \(j\), resulting from consumption in region \(i\)

The resulting death-transfer structure is therefore a **three-dimensional matrix**, with dimensions corresponding to:

- consumption-based accounting
- production-based accounting
- receptor-based accounting

Summing along the corresponding dimension produces transfer matrices for each accounting perspective.

This framework makes it possible to trace where consumption occurs, where pollution-generating production takes place, and where the associated health impacts are experienced.

# Updates Introduced in 2026

## From Emission to Health Impact Accounting

In 2025, the accounting methodology focused on measuring **PM2.5 emissions using input-output methods**.

From 2026, the methodology shifts to directly accounting for **deaths caused by PM2.5 pollution**.

This enables a more direct comparison between environmental impacts and human health outcomes and more closely aligns the indicator with **Indicator 3.2**, which tracks premature deaths attributable to PM2.5 emissions.

## Emission Inventory Mapping with GAINS

The 2026 update introduces substantial methodological changes.

Rather than first constructing an emissions inventory and then mapping those emissions to deaths, deaths are now generated directly from the consumption structure using input-output calculations.

The updated indicator constructs a **production-based death inventory** by linking PM2.5 emissions to sectoral and regional health impacts through atmospheric transport modelling, following the approach used in **Indicator 3.2.1**.

Production-based PM2.5 exposure estimates are derived from the **GAINS model**.

GAINS provides sectoral source contributions to annual mean ambient PM2.5 exposure, including both primary emissions and secondary particle formation.

The health impact assessment uses a **consumption–source (production)–receptor framework**.

Consumption-based PM2.5-related deaths are first estimated through EEMRIO analysis by mapping final consumption in each region to associated premature deaths through the economic input-output structure.

Atmospheric transport modelling is then used to transfer PM2.5-related deaths from production or source regions to receptor regions, accounting for long-range transport of air pollution.

The final PM2.5-related death flow is represented through a three-dimensional transfer matrix in which:

- the first dimension represents consumption-based accounting
- the second dimension represents production-based accounting
- the third dimension represents receptor-based accounting

Summing across different dimensions produces the corresponding transfer matrices under the different accounting frameworks.

## Linking with PM2.5 Mortality

The updated approach links:

- consumption-based PM2.5-related deaths
- the production-based PM2.5 mortality inventory
- deaths transferred through atmospheric transport

using:

```math
d_{i,j,k}
=
\left(
\frac{Tr_{i,j}}
{\sum_i Tr_{i,j}}
\right)
d_{j,k}
```

where:

- \(Tr_{i,j}\) is the economic flow from consumption region \(i\) to production region \(j\)
- \(d_{j,k}\) is the transfer of deaths through atmospheric movement from production region \(j\) to receptor region \(k\)
- \(d_{i,j,k}\) is the PM2.5-associated mortality in receptor region \(k\) resulting from production in region \(j\) driven by consumption in region \(i\)

The resulting three-dimensional matrix simultaneously represents consumption-based, production-based and receptor-based accounting of PM2.5-related deaths.

# Data

The indicator uses the following data sources:

- **EXIOBASE v3.11.1:** Global MRIO table
- **IEA fuel and activity data:** used in compilation of updated emissions inventories
- **Global Carbon Project 2025:** adjustments to the emissions inventory in EXIOBASE
- **World Bank Open Data:** adjustments to domestic intermediate and final consumption within the EXIOBASE MRIO table
- **EDGAR database:** disaggregation of the PM2.5 emissions inventory across the five rest-of-world regions
- **Indicator 3.2.1:** transfer of PM2.5-related mortality across borders through atmospheric transport
- **GAINS model:** sectoral source contributions to ambient PM2.5 exposure and associated health impacts

# Caveats and Limitations

The mapping of GAINS PM2.5 exposure estimates to economic sectors requires several simplifications.

Fuel-related exposure is allocated using total fuel use rather than fuel-specific information. This could be refined in future versions of the mapping framework.

Process-related exposures are usually associated with specific sectors. Distributing these health impacts across all MRIO sectors would therefore introduce inappropriate averaging.

Process-related exposures from GAINS are instead distributed only across sectors that can clearly be associated with the relevant processes, while exposures that cannot be further resolved are treated separately.

The disaggregation of the mortality inventory also introduces uncertainty.

For the five rest-of-world regions, unavailable data are either:

- filled using values from previous years, or
- estimated using the structure of embodied health impacts from other regions

The analysis can be updated when more complete data become available.

A key contribution of the methodology is the direct mapping of **consumption-based PM2.5-related mortality to MRIO tables**.

This allows consumption-based health impacts to be integrated directly into economic accounting frameworks.

The current analysis focuses on historical data, but the GAINS framework also provides future scenarios.

Together with methods for projecting MRIO tables, the approach could therefore be extended to assess future consumption patterns and associated health impacts.

Several simplifications remain and could be refined in future versions of the mapping framework.

MRIO and GAINS were originally developed for different purposes. MRIO models describe economic inputs, outputs and interregional supply chains, whereas GAINS is an integrated air-quality modelling framework designed for air-quality policy analysis and forward-looking scenarios.

Linking these frameworks may therefore introduce conceptual inconsistencies.

Although results are available at detailed sectoral and regional resolution, uncertainty is higher at these finer scales than at more aggregated levels.

Additional assumptions required because of unavailable inventory data further increase uncertainty.

The methodology can therefore be refined as improved data, inventories and modelling approaches become available.
