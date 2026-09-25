# Methods

This indicator measures **company engagement with climate change and health** using publicly available **UN Global Compact Communication on Progress (GCCOP) reports**.

The analysis identifies references to predefined search terms related to:

- health
- climate change

The full set of search terms used is shown below.

## Health and Climate Change Search Terms

| Health terms | Climate change terms |
|---|---|
| malaria | climate change |
| diarrhoea | changing climate |
| infection | climate emergency |
| disease | climate action |
| diseases | climate crisis |
| sars | climate decay |
| measles | global warming |
| pneumonia | green house |
| epidemic | temperature |
| epidemics | extreme weather |
| pandemic | global environmental change |
| pandemics | climate variability |
| epidemiology | greenhouse |
| healthcare | greenhouse-gas |
| health | low carbon |
| mortality | ghge |
| morbidity | ghges |
| nutrition | renewable energy |
| illness | carbon emission |
| illnesses | carbon emissions |
| ncd | carbon dioxide |
| ncds | carbon-dioxide |
| air pollution | co2 emission |
| malnutrition | co2 emissions |
| malnourishment | climate pollutant |
| mental disorder | climate pollutants |
| mental disorders | decarbonization |
| stunting | decarbonisation |
|  | carbon neutral |
|  | carbon-neutral |
|  | carbon neutrality |
|  | climate neutrality |
|  | net-zero |

## Identifying Engagement with Climate Change and Health

To identify engagement with the intersection of climate change and health, the analysis examines whether a climate change-related term appears close to a health-related term within each report.

For every occurrence of a health-related term, the analysis searches the **25 words before and 25 words after** that term for any of the climate change-related terms.

Reports containing this type of co-occurrence are classified as showing engagement with the intersection of climate change and health.

# Data

The indicator uses publicly available **UN Global Compact Communication on Progress reports**.

A total of **45,449 reports** were downloaded.

The reports cover companies based in **123 countries**.

In previous analyses, only reports available in English were included. The current analysis includes reports submitted in **all available languages**.

In total, reports were submitted in **41 languages**.

Reports that were not in English were translated into English using **OpenAI `gpt-4o-mini`**, with the temperature parameter set to `0.3`.

The translation prompt was:

> You are a high-quality translator. Translate the text to English, maintaining the original meaning and tone.

The API was used to process the large volume of report text.

A small number of files were corrupt or could not be converted into plain-text format and were therefore unavailable for analysis.

## GCCOP Reports by Year

| Year | Companies (N) | Climate (proportion) | Health (proportion) | Intersection (proportion) |
|---|---:|---:|---:|---:|
| 2016 | 3,548 | 0.62 | 0.85 | 0.15 |
| 2017 | 3,709 | 0.63 | 0.85 | 0.16 |
| 2018 | 3,733 | 0.65 | 0.86 | 0.18 |
| 2019 | 4,049 | 0.68 | 0.87 | 0.20 |
| 2020 | 3,549 | 0.73 | 0.89 | 0.27 |
| 2021 | 5,732 | 0.76 | 0.90 | 0.35 |
| 2022 | 6,089 | 0.78 | 0.90 | 0.36 |
| 2023 | 4,461 | 0.91 | 0.94 | 0.58 |
| 2024 | 7,880 | 0.81 | 0.90 | 0.46 |
| 2025 | 11,209 | 0.70 | 0.76 | 0.37 |


# Caveats and Limitations

The analysis is based on a defined set of health and climate change search terms.

It therefore does not capture all possible indirect relationships between climate change and health.

For example, a report may discuss the effects of climate change on agriculture without explicitly linking this discussion to health. These indirect connections are not captured by the current search-term approach.

The results therefore provide a relatively **conservative estimate of corporate engagement with the intersection of climate change and health**.

Future work could extend the analysis to capture indirect links between climate change and health and incorporate additional forms of analysis.
