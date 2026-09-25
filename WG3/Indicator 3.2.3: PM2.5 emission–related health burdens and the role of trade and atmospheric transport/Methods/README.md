# Methods

## Environmentally Extended Multi-Regional Input-Output Analysis

There are two approaches to accounting for health impacts from air pollution:

- **Production-based accounting**, sometimes referred to as territorial accounting, which attributes health impacts to the region where pollution occurs.
- **Consumption-based accounting**, which attributes health impacts to the region whose consumption of goods and services drives the pollution emissions.

Both CO2 emissions through climate change and air pollution directly affect human health. Understanding how responsibility for these emissions and associated health impacts is distributed across borders is therefore important in a globalised economy.

This indicator estimates **PM2.5-related premature deaths embodied in international trade** and calculates national PM2.5-related mortality from a consumption perspective. This allows responsibility for emissions and their associated environmental and health consequences to be attributed across international supply chains.

An **Environmentally Extended Multi-Regional Input-Output (EEMRIO)** analysis is used to calculate consumption-based health impacts.

EEMRIO analysis represents production and consumption structures and the interdependencies between economic sectors and regions. Relationships between final demand and associated health impacts are estimated using the **Leontief inverse matrix**.

**[Insert Equation 1 from source]**

where:

- \(C\) = total consumption-based PM2.5-related deaths
- \(E\) = row vector of production-based death intensity, defined as deaths per unit of economic output
- \(F\) = vector of final demand
- \(L\) = Leontief inverse matrix
- \(I\) = identity matrix
- \(A\) = technical coefficient matrix describing inter-sectoral and inter-regional flows per unit of output

The Leontief inverse is calculated as:

```math
L=(I-A)^{-1}
```

Consumption-based accounting includes deaths associated with:

- domestic production for domestic final consumption
- production embodied in imported goods and services

Production-based accounting instead captures health impacts arising from PM2.5 emissions generated within national territory.

The relationship between production- and consumption-based deaths can also be expressed in terms of deaths embodied in international trade.

**[Insert Equation 2 from source]**

where:

- \(C_{CBD}\) = consumption-based PM2.5 emission-related deaths
- \(C_{imp}\) = deaths embodied in imports
- \(C_{PBD}\) = production-based deaths associated with PM2.5 emissions
- \(C_{exp}\) = deaths embodied in exports

## Production-based PM2.5 Death Inventory

The analysis constructs a **production-based inventory of PM2.5-related deaths** by linking PM2.5 emissions to sectoral and regional health impacts through atmospheric transport modelling.

The approach follows the methodology used in **Indicator 3.2.1**.

Production-based PM2.5 exposure estimates are obtained from the **GAINS model (Greenhouse Gas – Air Pollution Interactions and Synergies)**.

GAINS provides sector-specific contributions to annual mean ambient PM2.5 exposure, incorporating:

- primary PM2.5 emissions
- secondary particle formation

These exposure estimates are linked to health impacts to produce a sectoral and regional inventory of premature deaths associated with production activities.

## Consumption, Production and Receptor Accounting

The health-impact assessment uses a **consumption–source (production)–receptor framework**.

Three different dimensions of PM2.5-related mortality are represented:

1. **Consumption-based accounting** attributes deaths to the region whose final consumption drives the economic activity.
2. **Production-based accounting** attributes deaths to the region where the production and associated pollution emissions originate.
3. **Receptor-based accounting** attributes deaths to the region where exposed populations experience the resulting health impacts.

Consumption-based PM2.5-related deaths are first calculated using EEMRIO analysis, linking final consumption in each region to premature deaths through the global economic input-output structure.

Atmospheric transport modelling is then used to transfer the associated PM2.5 health impacts from production or source regions to receptor regions, accounting for the movement of air pollution across national borders.

## Three-dimensional Death Transfer Matrix

The final PM2.5-related mortality flow is represented using a **three-dimensional transfer matrix**.

The three dimensions represent:

- consuming region
- producing or source region
- receptor region

This structure allows deaths to be traced simultaneously through both international economic supply chains and atmospheric pollution transport.

Summing the three-dimensional matrix along different dimensions produces transfer matrices corresponding to different accounting perspectives.

The resulting framework identifies the PM2.5-related deaths experienced in a receptor region that result from production in a source region and are ultimately driven by consumption in another region.

**[Insert three-dimensional transfer equation from source]**

In this framework:

- the economic component describes flows from the consuming region to the producing region
- the atmospheric component describes the transfer of pollution-related mortality from the producing region to the receptor region
- the combined matrix represents PM2.5-related deaths across consumption, production and receptor dimensions

This approach makes it possible to distinguish where demand originates, where pollution-generating production occurs, and where the associated health impacts are experienced.

## Mapping PM2.5 Mortality to the MRIO Framework

The methodology directly links consumption-based PM2.5-related health impacts with the multi-regional input-output system.

Deaths associated with PM2.5 pollution are therefore traced through:

**Consumption → Production → Atmospheric transport → Receptor population**

This allows the health consequences of international trade to be assigned to consuming, producing and affected regions under different accounting frameworks.

# Data

The indicator uses the following data sources:

- **Global MRIO tables:** EXIOBASE v3.11.1
- **IEA fuel and activity data:** used to compile updated emissions inventories
- **Global Carbon Project 2025:** used to adjust the CO2 emissions inventory in EXIOBASE
- **World Bank Open Data:** used to adjust domestic intermediate and final consumption within the EXIOBASE MRIO table
- **EDGAR database:** used to disaggregate the PM2.5 emissions inventory for the five rest-of-world regions
- **Indicator 3.2.1:** used for the transfer of PM2.5-related mortality across borders through atmospheric transport
- **GAINS model:** used to estimate sectoral source contributions to ambient PM2.5 exposure and associated health impacts

# Caveats and Limitations

The mapping of GAINS PM2.5 exposure estimates to economic sectors requires several simplifications.

Fuel-related exposure is allocated using total fuel use rather than fuel-specific information. This could be refined in future versions of the mapping framework.

Process-related PM2.5 exposure is generally associated with particular industrial activities. Distributing these impacts across all MRIO sectors would therefore introduce inappropriate averaging. Process-related exposures are instead allocated only to sectors that can reasonably be linked to the corresponding processes, while unresolved process exposures are treated separately.

The disaggregation of the mortality inventory also introduces uncertainty.

For the five rest-of-world regions, unavailable data are either:

- filled using data from previous years, or
- estimated using the structure of embodied health impacts observed in other regions

These estimates can be updated as more complete data become available.

A major contribution of the methodology is the direct mapping of **consumption-based PM2.5-related mortality to MRIO tables**, allowing health impacts to be integrated into consumption-based economic accounting.

The current analysis focuses on historical data. However, the GAINS framework also contains future scenarios. Combined with projected MRIO tables, this methodology could therefore be extended to assess future consumption patterns and associated health impacts.

The approach links modelling frameworks originally developed for different purposes.

MRIO models describe economic inputs, outputs and international supply-chain relationships, whereas GAINS is an integrated air-quality modelling framework designed partly for forward-looking policy analysis. Linking these systems may therefore introduce conceptual inconsistencies.

Although results can be produced at detailed sectoral and regional resolution, uncertainty is greater at these finer levels than for more aggregated estimates.

Additional assumptions and estimations required because of missing inventory data further increase uncertainty.

The methodology can therefore be refined as improved inventories, modelling approaches and data become available.
