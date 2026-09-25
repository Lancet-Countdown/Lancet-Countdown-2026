# Methods

This indicator compares **international finance for health adaptation** with countries’ disclosed health adaptation needs.

Supply estimates combine:

- bilateral climate finance commitments for health adaptation projects
- financing from UN and other multilateral organisations
- World Bank financing
- Green Climate Fund financing
- private and philanthropic financing

These flows are compared with **costed health adaptation needs reported by countries in official submissions to the UNFCCC**.

All monetary values are expressed in **2024 US dollars**.

## Bilateral Climate Adaptation Finance, 2021–2024

Committed bilateral finance is obtained from the **OECD Creditor Reporting System (CRS)**.

Projects are included where they are identified as climate adaptation finance within the following health-related subsectors:

- Health, general
- Basic health
- Non-communicable diseases
- Population policies/programmes and reproductive health

Within these subsectors, finance relating to the following areas is excluded:

- Malaria control
- COVID-19 control
- Tobacco use control
- Sexually transmitted disease control, including HIV/AIDS
- Control of harmful use of alcohol and drugs
- Tuberculosis control

## Fund-level and Development Finance Institution Flows, 2021–2024

CRS data are supplemented with project-level financing from major multilateral climate finance institutions.

### World Bank

World Bank adaptation finance is obtained from the World Bank’s annual Climate Finance reports.

Adaptation commitments under the **Health, Nutrition and Population Global Practice** are extracted for fiscal years **2021–2024**.

These reports explicitly identify the proportion of financing allocated to adaptation.

### Green Climate Fund

Project-level adaptation finance is obtained from the **Green Climate Fund portfolio database**.

Projects identified as health adaptation are included.

Where projects are cross-cutting, the proportion of funding directed towards health adaptation is estimated using information provided in the database.

Where a project includes multiple recipient countries, the financing is allocated equally across recipient countries.

### UN and Other Multilateral Organisations

Financing from UN agencies and other multilateral organisations is captured through CRS provider reporting.

This includes financing from organisations such as:

- Food and Agriculture Organization
- United Nations Development Programme
- United Nations Population Fund

### Private and Philanthropic Finance

Philanthropic contributions are identified through CRS provider classifications and combined with public international finance flows.

These include contributions from foundations and philanthropic organisations such as:

- Gates Foundation
- Rockefeller Foundation
- Wellcome Trust
- Open Society Foundations
- Fondation Botnar
- Leona M. and Harry B. Helmsley Charitable Trust
- postcode lottery funds

## International Finance Supply

Supply estimates represent **international finance directed towards developing countries**.

Domestic public expenditure is excluded because international climate finance is intended, in part, to support conditional financing needs that countries report they are unable to mobilise domestically.

Human-in-the-loop methods are used to minimise duplication and project leakage across the different supply-side data sources.

## Stated Health Adaptation Needs, 2025–2030

To estimate conditional health adaptation finance needs, official submissions to the **UNFCCC** are analysed, including:

- National Adaptation Plans
- Nationally Determined Contributions

In the UNFCCC context, **conditional** refers to additional actions that countries indicate can only be implemented with international support.

A tailored machine-learning and text-mining approach is used to identify and interpret costed adaptation needs within these documents.

Each document is:

- scanned
- translated where required
- processed using machine-learning methods
- analysed using text-mining tools
- processed using table-parsing methods

Monetary values are extracted where they are associated with:

- adaptation
- health adaptation
- stated financing needs
- conditional adaptation targets
- planned resilience actions associated with adaptation targets

Following automated extraction, each document is manually assessed to determine whether the stated needs are suitable for inclusion.

## Annualisation of Stated Needs

Reported needs are annualised to allow comparison with annual finance supply.

The analysis focuses on the period **2025–2030**.

Some more recent submissions cover periods such as:

- 2025–2030
- 2026–2035

Where disclosed needs extend beyond 2025–2030, only the proportional share corresponding to the relevant period is included.

This provides an annualised estimate of countries’ disclosed conditional health adaptation financing needs.

## Currency Standardisation

The base year for all financial values is **2024**.

All financing and stated needs are converted to **2024 US dollars** using inflation data from the Minneapolis Federal Reserve.

Where commitments or estimated needs are reported in currencies other than US dollars, average exchange rates from the year in which the relevant document was published are applied.

This approach allows international health adaptation finance supply to be compared with the additional financial needs that countries themselves identify for adapting health systems to climate change.

The resulting estimates are based on countries’ self-reported priorities and costed needs rather than externally modelled estimates.

# Data

The indicator uses the following data sources:

- **Bilateral climate adaptation finance:** OECD Creditor Reporting System
- **Green Climate Fund finance:** Green Climate Fund portfolio database
- **World Bank finance:** World Bank Annual Climate Finance Update reports
- **UN and other multilateral finance:** OECD CRS provider reporting
- **Private and philanthropic finance:** OECD CRS provider classifications
- **National Adaptation Plans:** UNFCCC NAP submissions and NAP Central
- **Nationally Determined Contributions:** UNFCCC NDC Registry
- **Inflation adjustment:** Minneapolis Federal Reserve
- **Exchange rates:** average exchange rates corresponding to the publication year of the source document

# Caveats and Limitations

The indicator provides a comparison between international health adaptation finance supply and countries’ stated financing needs, but several limitations apply.

## Effects of Recent Aid Cuts

Ongoing geopolitical fragmentation during **2025–2026** means that recent reductions in aid from major donors are not fully reflected in the estimates.

These reductions may not substantially change overall estimates of adaptation finance supply but could have important distributional and sector-specific effects, particularly for health adaptation in vulnerable countries.

## Coverage of NAPs and NDCs

Only **48 countries** reported costed health adaptation needs in their official submissions.

A total of **79 countries** reported costed conditional adaptation needs more broadly.

Documents from **133 least developed and developing countries** were analysed, out of 193 UN member states plus two non-state members.

The resulting health adaptation needs estimates are therefore not globally representative.

Some countries integrate health within broader adaptation priorities rather than reporting a separate health-specific financial estimate.

## Inconsistent Timeframes

Reported adaptation needs are not always associated with a clearly defined time period.

Where possible, values corresponding to **2025–2030** are used.

Where needs cover a longer or different period, a proportional estimate is used for the relevant years.

## Under- and Over-reporting of Needs

Many countries do not provide costed health-sector adaptation needs.

Reasons reported by countries include:

- limited technical capacity
- insufficient data
- planned but incomplete costing exercises

The absence of reported costs therefore does not necessarily indicate the absence of health adaptation needs.

## Timing of Source Documents

Needs estimates are based on the most recent available NAPs and NDCs as of **12 February 2026**.

Documents published earlier and without a timeframe that includes **2025–2030** are excluded from the analysis.
