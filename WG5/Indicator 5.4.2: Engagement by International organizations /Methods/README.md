# Methods

This indicator explores the direct health benefits of climate change mitigation. We continue using **X (formerly Twitter)** to harvest rhetoric from international organizations with respect to climate change and health. We provide new evidence derived from the rhetoric of international organizations on X in 2025.

Natural language processing is used to track engagement with health co-benefits in policy discourse on the social media accounts of major international organizations (IOs) involved in climate change adaptation and mitigation work.

Following the methodology of previous reports, we developed keywords corresponding to seven exposure pathways linking mitigation action and health (e.g., air pollution and plant-based diets), terms directly relating to the concept of health co-benefits (e.g., ancillary benefits), and specific mitigation interventions expected to have health co-benefits (e.g., transition to renewable electricity generation). The full list of search terms is provided below.

We construct our indicator of **engagement intensity** as the monthly proportion of posts containing at least one term from our keyword list relative to the total number of posts by that IO.

An originally written computational algorithm is used to identify lists of posts containing each keyword from a given list of keywords for each international organization in each month of the 2025 period. All lists are then combined to identify unique posts, and duplicate posts resulting from several keywords being mentioned in the same post are excluded.

The number of posts in the unique keyword-matched posts list is used as the numerator of the indicator. The total number of posts written by each IO in each month is used as the denominator. The resulting indicator is calculated as:

```text
Engagement intensity = Keyword-matched posts / Total posts
```

To compute aggregate intensity measures, such as the overall trend or intensity by sector or field, keyword-matched posts and total posts are first summed across all organizations within each group. Aggregate intensity is then calculated as:

```text
Aggregate intensity = Sum of keyword-matched posts / Sum of total posts
```

This approach avoids the bias that would arise from averaging pre-computed organization-level intensities, which would give disproportionate weight to organizations with relatively few posts.

As the majority of posts are written in English and all keywords are in English, the analysis is restricted to **English-language posts**, excluding posts written in other languages.

## International Organizations

The analysis includes **37 international organizations** representing a range of sectors, including economic and financial organizations, environmental organizations, regional development organizations, health organizations, migration organizations, and peace and security organizations.

| Organization | Acronym | X Handle | Field | Sector |
|---|---|---|---|---|
| African Union | AU | `_AfricanUnion` | Regional Cooperation | adaptation |
| Asian Development Bank | ADB | `ADB_HQ` | Global Development Banking | both |
| African Development Bank | AFDB | `AfDB_Group` | Global Development Banking | adaptation |
| Africa Rice Center | WARDA | `AfricaRice` | Food and Agriculture | adaptation |
| APEC | APEC | `APEC` | Regional Cooperation | both |
| ASEAN | ASEAN | `ASEAN` | Regional Cooperation | both |
| EBRD | EBRD | `EBRD` | Global Development Banking | adaptation |
| ECOWAS | ECOWAS | `ecowas_cedeao` | Trade and Economy | adaptation |
| European Investment Bank | EIB | `EIB` | Global Development Banking | both |
| European Union | EU | `EU_Commission` | Regional Cooperation | both |
| FAO | FAO | `FAO` | Food and Agriculture | adaptation |
| Pacific Islands Forum | PIF | `ForumSEC` | Regional Cooperation | adaptation |
| International Energy Agency | IEA | `IEA` | Energy Policy | mitigation |
| IFAD | IFAD | `IFAD` | Food and Agriculture | adaptation |
| IFC | IFC | `IFC_org` | Global Development Banking | both |
| IMF | IMF | `IMFNews` | Global Development Banking | both |
| NATO | NATO | `NATO` | Peace and Security | adaptation |
| OAS | OAS | `OAS_official` | Regional Cooperation | both |
| OSCE | OSCE | `OSCE` | Peace and Security | adaptation |
| UNHCR | UNHCR | `Refugees` | Migration | adaptation |
| SAARC | SAARC | `SaarcSec` | Regional Cooperation | adaptation |
| SADC | SADC | `SADC_News` | Development | adaptation |
| Inter-American Development Bank | IADB | `the_IDB` | Global Development Banking | adaptation |
| UN Security Council | UNSC | `UN` | Peace and Security | adaptation |
| UNDRR | UNDRR | `UNDRR` | Disaster Risk Management | adaptation |
| UNECE | UNECE | `UNECE` | Development | both |
| UNEP | UNEP | `UNEP` | Environment Policy | mitigation |
| UNFCCC | UNFCCC | `UNFCCC` | Environment Policy | mitigation |
| UNFPA | UNFPA | `UNFPA` | Health | adaptation |
| UNICEF | UNICEF | `UNICEF` | Development | adaptation |
| IOM | IOM | `UNmigration` | Migration | adaptation |
| UNOCHA | OCHA | `UNOCHA` | Disaster Risk Management | adaptation |
| WEF | WEF | `wef` | Trade and Economy | both |
| WFP | WFP | `WFP` | Food and Agriculture | adaptation |
| WHO | WHO | `WHO` | Health | both |
| World Bank | WB | `WorldBank` | Global Development Banking | both |
| WTO | WTO | `wto` | Trade and Economy | both |

## Keyword Search Terms

| Keywords Category | Keywords |
|---|---|
| **Direct co-benefits terms** | health benefit, win-win, double dividend, cobenefit, co-benefit, secondary benefit, ancillary benefit, side benefit, collateral benefit, associated benefit, ancillary effect, knock on effect, ancillary impact, side effect, co-control, carbon benefit, reduction benefit, synergy, spillover, trade-off, distributional aspect, distributional effect, mortality impact |
| **Policy related terms** | Paris Agreement, 2 degrees, 2C, 2°C, 1.5°C, 1.5C, climate pledge, climate goals, energy pledge, net-zero, NetZero, zero emission, decarbonisation, decarbonization, mitigate, mitigation, carbon neutral, carbon neutrality, low carbon |
| **Intervention: Energy** | renewables, solar, photovoltaics, PV, batteries, wind, coal, clean energy, energy demand, energy use, energy efficiency, heat pumps, building retrofit, smart thermostat, insulation, net-zero buildings, green roof, cool roof, electric vehicles, clean cooking, LED lighting, geothermal power, fuel poverty, energy poverty, nuclear, electricity, hydrogen, fossil fuel, energy crisis, energy investment, affordable energy, natural gas |
| **Intervention: Land use** | forest restoration, tree plantation, carbon storage, carbon sequestration |
| **Pathway: Air Pollution** | air quality, air pollutants, air toxin, PM2.5, PM25, particles, particulates, ozone, smog, soot, black carbon, short-lived climate pollutants, SLCP, SLCPs |
| **Pathway: Noise** | traffic noise, aircraft noise |
| **Pathway: Temperature** | urban heat island, heat, overheat, cooling, humidity, temperature, heat wave |
| **Pathway: Diet** | dietary, nutrition, meat, dairy, animal sourced food, animal-sourced food, vegetarian, vegan, plant-based, plant-rich, planetary health diet |
| **Pathway: Physical activity** | exercise, active travel, walking, walkable, cycling, bicycle, bike |
| **Pathway: Sustainable mobility** | public transport, rail, trains |
| **Pathway: Nature exposure** | green, greenspace, green space, cooling, trees, forest, nature based solution, nature |

---

## Data

We select **41 international organizations** representing various sectors, including economic, financial, environmental, regional development, health, migration, peace and security, and other areas.

The sample of IOs is based on previous work and extended to cover mitigation-focused international organizations.

We use **X (formerly Twitter)** as the social media platform to collect official communications by IOs, extracting all posts written by the official accounts of the selected organizations during **2025**.

The final dataset contains **32,915 unique posts**.

As the majority of posts are written in English and all keywords are in English, the analysis is restricted to English-language posts. Non-English posts are identified and removed using the Python [`langdetect`](https://pypi.org/project/langdetect/) package.

After removing non-English posts, the final analytical dataset comprises **31,860 English-language posts written by 41 international organizations in 2025**.

---

## Caveats and Limitations

The analysis is based on a **limited, non-random sample of international organizations**.

At present, we rely on posts from X to assess the intensity of health co-benefits rhetoric. However, international organizations may strategically curate the content they share on the platform, potentially introducing bias into the analysis.
