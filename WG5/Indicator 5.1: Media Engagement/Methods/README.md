# Legislative Engagement

This folder contains the data sources, caveats and methods for the Legislative Engagement indicator.


## Methods

The first part of the document in the Methods folder, titled **Methodology**, contains information related to data processing, including the data sources, preparation steps, and calculation approach.

The detailed methodology is available here: [Methodology 5.1.docx](Methodology%205.1.docx).

To download the file, open the link and click **View raw**.


## Data

# Data Sources

## Countries

Countries were selected using **purposive sampling stratified by geographic region, World Bank income group, and population size**, following conventions established in comparative cross-national media research.

Geographic coverage was based on seven regions following the UN geoscheme and World Bank regional classifications, while income groups were classified as:

* High income
* Upper-middle income
* Lower-middle income
* Low income

The **Reuters Institute Digital News Report (DNR) 2025** sample of 48 countries served as the base sampling frame because of its established methodology and widespread use in the comparative media literature.

A further **21 countries** were added to address gaps in the region-by-income stratification matrix. Selection prioritised underrepresented regions, particularly:

* Sub-Saharan Africa
* Middle East and North Africa
* South and Central Asia
* Eastern Europe

Within each underrepresented region-income cell, the highest-population eligible country was prioritised.

Because this sampling procedure excludes microstates with populations below 1 million, and because **Small Island Developing States (SIDS)** face disproportionate climate and health risks that are central to this analysis, the 69-country sample was supplemented with six additional SIDS:

* Fiji
* Guyana
* Jamaica
* Maldives
* Mauritius
* Papua New Guinea

The final sample comprises **75 countries**.

## Online Newspapers

For each country, relevant online newspapers were identified using a combination of three measures of web traffic:

* Alexa Traffic Rank
* Google Page Rank
* Majestic SEO

The newspaper rankings used for source selection are available from [4International Media & Newspapers (4imn.com)](https://www.4imn.com/).

This approach prioritises outlets with the largest digital readership within each national media market.

For countries where web traffic information was incomplete or unavailable—predominantly lower-income and smaller-market countries—source selection was supplemented using the **BBC country media profiles**, which provide editorial overviews of major news outlets by country.

The resulting corpus includes **up to five online news sources per country**.

## Article Collection

Articles were collected from **306 news sources across 75 countries**, spanning **39 languages** and covering the period from **1 January 2021 to 31 December 2025**.

Article collection proceeded through two main approaches.

### NewsAPI

Where possible, articles were collected using [NewsAPI](https://newsapi.ai/), a news aggregation service indexing content from more than 150,000 sources worldwide.

NewsAPI requires keyword-based queries in the language of the source. To construct these queries, a set of **28 climate-related keyword terms** was developed and translated into **39 languages** using **Claude Opus 4.6**.

The model was explicitly instructed to generate expressions as they would naturally appear in news reporting in each language rather than producing literal translations from English.

The keyword set was intentionally designed to **maximise recall rather than precision**, because retrieved articles were subsequently filtered using a multilingual language-model classifier.

### ScrapAI

For news sources that were not indexed by NewsAPI, or where NewsAPI collection costs were prohibitive, articles were collected using [ScrapAI](https://docs.scrapai.dev/introduction), a custom-built web-scraping tool.

For these sources, all available content from the target websites was crawled and the same translated climate-related keyword filters used for NewsAPI were subsequently applied. This ensured consistency across the two collection approaches.

### Final Article Corpus

The complete corpus contains **more than 2.2 million articles**:

* approximately **89%** were collected through NewsAPI;
* approximately **11%** were collected through ScrapAI.

The fine-tuned multilingual classifier described in the **Methods** identified:

* **759,312 articles** as substantively engaging with climate change, health, or their intersection; and
* **531,111 articles** as being about climate change.

## Climate Change and Health Keywords

The simplified keyword sets used during article collection and model development are shown below.

### Climate Change Keywords

`climate`, `climates`, `global warming`, `global heating`, `extreme weather`, `extreme event`, `extreme events`, `extreme heat`, `heatwave`, `heatwaves`, `heat wave`, `heat waves`, `rising temperature`, `rising temperatures`, `temperature`, `sea level`, `sea levels`, `greenhouse gas`, `greenhouse gases`, `emission`, `emissions`, `CO2`, `carbon`, `net zero`, `net-zero`, `renewable`, `drought`, `droughts`

### Health Keywords

`air pollution`, `casualties`, `chikungunya`, `cholera`, `deaths`, `dengue`, `disease`, `diseases`, `epidemic`, `epidemics`, `epidemiology`, `extreme poverty`, `fever`, `food insecurity`, `health`, `hunger`, `illness`, `illnesses`, `infection`, `infections`, `lack of food`, `life expectancy`, `malaria`, `malnourishment`, `malnutrition`, `measles`, `mental disorder`, `disorders`, `morbidity`, `mortality`, `nutrition`, `pandemic`, `pandemics`, `pneumonia`, `quality of life`, `SARS`, `sickness`, `starvation`, `stunting`, `undernourishment`, `well-being`, `wellbeing`, `West Nile virus`, `zika`

> **Note:** Health-related keywords were used only to sample relevant articles for model distillation. Translations of both the climate change and health-related keywords are available in the [Lancet Global News Study GitHub repository](https://github.com/project-c3ds/lancet-global-news-study/translations/).

## Country Groupings for Subgroup Analyses

To support subgroup analyses, external data were used to classify countries according to **geographic region, development status, and climate zone**.

### Geographic Region

Countries were assigned to regions using the **2026 Lancet Countdown country groupings**.

The resulting distribution was:

| Region                         | Number of countries |
| ------------------------------ | ------------------: |
| Africa                         |                  12 |
| Asia                           |                  18 |
| Europe                         |                  26 |
| Latin America                  |                   9 |
| Northern America               |                   2 |
| Oceania                        |                   1 |
| Small Island Developing States |                   7 |

### Human Development Index

Countries were assigned a **Human Development Index (HDI)** category using HDI values published in the **UNDP Human Development Report 2025**.

The fixed cut-points introduced in the 2014 Human Development Report and retained subsequently were used:

| HDI category | Definition  | Number of countries |
| ------------ | ----------- | ------------------: |
| Very High    | HDI ≥ 0.800 |                  39 |
| High         | 0.700–0.799 |                  20 |
| Medium       | 0.550–0.699 |                  11 |
| Low          | < 0.550     |                   3 |

**Taiwan and Hong Kong were excluded from the HDI subgroup analysis because no HDI category was assigned.**

### Climate Zone

Countries were assigned a climate zone primarily according to the latitude of their capital city or major population centre in relation to the **Tropic of Cancer (23.5°N)** and **Tropic of Capricorn (23.5°S)**.

Countries were classified as:

* **Northern temperate:** above 23.5°N
* **Tropical:** between 23.5°N and 23.5°S
* **Southern temperate:** below 23.5°S

A small number of subtropical countries whose dominant climate pattern is hot or monsoonal, including **Egypt and India**, were grouped with the Tropical zone.

The resulting distribution was:

| Climate zone       | Number of countries |
| ------------------ | ------------------: |
| Northern temperate |                  39 |
| Tropical           |                  32 |
| Southern temperate |                   4 |

The four countries classified as Southern temperate were **Argentina, Australia, Chile, and South Africa**.



## Caveats and Limitations

This analysis has several limitations that are necessary to consider when interpreting the media engagement estimates. On the data side, country and source coverage remains incomplete. Data collection is costly—both in terms of researcher time and API costs—and thus we restricted our sample to 75 countries and included only up to the top five online sources. A larger sample of countries, specifically low- and middle-income countries in the southern hemisphere, would further improve the representativeness of these findings. Focusing on only the top five digital news sources likely favors urban, commercially owned, major-language publications and under samples regional outlets. Moreover, a non-trivial number of countries in our sample have fewer than the upper limit of five sources. Issues associated with coverage and completeness will be the focus of subsequent improvements of this indicator. 
On the model side, the out-of-sample validation comprises 150 articles annotated by a single coder, with only 11 positive examples for one of the rarest yet central labels (i.e., HECC). As such, the per-label F1 scores for this class are a noisy point estimate. Subsequent versions of this indicator must substantially expand the validation set and incorporate multiple annotators per article. 
Finally, the inverse HDI–prevalence relationship rests on only three countries in the Low HDI group and eleven in Medium, and the corresponding estimates should be interpreted cautiously until country coverage of low-income settings improves.


   
## Contact
For further details regarding the methodology or data, please contact the indicator authors.
