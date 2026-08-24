# Methods

This indicator tracks scientific engagement at the intersection of health and climate change, measured by the number of publications across major categories (**mitigation, adaptation, and impacts**), topics, and mentioned geographic regions.

This serves as a valuable resource for the mission of the Lancet Countdown to compile a comprehensive policy-relevant stocktake of the available evidence and a starting point for more focused syntheses of the scientific literature.

The indicator is based on a **systematic map of global research on climate change and health** using a machine-learning-assisted approach to identify relevant literature.

## Identification of Relevant Publications

To identify relevant scientific publications that focus on both climate change and health, **OpenAlex**, an open scientific database, was used to retrieve **1,748,000 publications**.

To train the machine-learning classifiers, **4,175 publications** were randomly sampled and their abstracts were manually annotated for relevance and, if relevant, labelled according to three major categories:

- **Mitigation:** Effect on health of interventions to mitigate climate change
- **Adaptation:** Effect on health of interventions to adapt to climate change
- **Impacts:** Effect of climate change on health

For a record to be annotated as relevant, the abstract had to be in English and had to provide a clear link to actual, projected, or perceived impacts of climate change, responses to reduce the impacts of climate change (adaptation), or the mitigation of greenhouse gas emissions.

Furthermore, it needed to show a substantial focus on a perceived, experienced, or observed eligible health-related outcome or health system and present empirically driven research or a review thereof.

## Search Query

The following OpenAlex search query was used to identify climate change and health publications:

```text
(
  (
    climat* OR
    "global warming" OR
    "greenhouse effect" OR
    "greenhouse effects" OR
    temperature* OR
    precipitat* OR
    rainfall OR
    "heat index" OR
    "heat indices" OR
    "extreme heat event" OR
    "extreme heat events" OR
    "heat-wave" OR
    heatwave OR
    "extreme-cold*" OR
    "cold index" OR
    "cold indices" OR
    humidity OR
    drought* OR
    hydroclim* OR
    monsoon OR
    "el nino" OR
    ENSO OR
    "sea surface temperature" OR
    "sea surface temperatures" OR
    SST OR
    snowmelt* OR
    flood* OR
    storm* OR
    cyclone* OR
    hurricane* OR
    typhoon* OR
    "sea-level" OR
    "sea level" OR
    wildfire* OR
    "wild-fire" OR
    "forest-fire" OR
    "forest fire" OR
    "forest fires"
  )
  OR
  (disaster 3N (risk OR management OR manage OR managing OR natural))
  OR
  ((extreme 3N event) NOT paleo)
  OR
  (
    (
      hydrochloroflourocarbons OR
      pm2.5 OR
      ammonia OR
      VOCs OR
      nox OR
      hydrochloroflourocarbon OR
      HFCs OR
      SO4 OR
      carbon OR
      n20 OR
      halogen OR
      chlorocarbon OR
      pm25 OR
      nh3 OR
      SOX OR
      O3 OR
      ccl4 OR
      NMVOC OR
      SO2 OR
      HFC OR
      CO OR
      nitrous OR
      methane OR
      ch4 OR
      co2 OR
      sulphur OR
      VOC OR
      ozone OR
      chlorocarbons
    )
    3N
    (
      emissions OR
      emitter OR
      emitting OR
      mitigate OR
      emission OR
      mitigation
    )
  )
)

AND

(
  health OR
  wellbeing OR
  "well-being" OR
  ill OR
  illness OR
  disease* OR
  syndrome* OR
  infect* OR
  medical* OR
  mortality OR
  DALY OR
  morbidity OR
  injur* OR
  death* OR
  hospital* OR
  acciden* OR
  emergency OR
  emergent OR
  doctor OR
  GP OR
  obes* OR
  overweight OR
  "over-weight" OR
  underweight OR
  "under-weight" OR
  hunger OR
  stunting OR
  wasting OR
  undernourish* OR
  undernutrition OR
  anthropometr* OR
  malnutrition OR
  malnour* OR
  anemia OR
  anaemia OR
  "micro-nutrient*" OR
  hypertension OR
  "blood pressure" OR
  stroke OR
  renovascular OR
  cardiovascular OR
  cerebrovascular OR
  (CVD NOT (vapor OR vapour)) OR
  "heart disease" OR
  Isch*emic OR
  cardio*vascular OR
  "heart attack" OR
  "heart attacks" OR
  coronary OR
  CHD OR
  diabet* OR
  CKD OR
  renal OR
  cancer OR
  kidney OR
  lithogenes* OR
  skin OR
  fever* OR
  renal* OR
  rash* OR
  eczema* OR
  "thermal stress" OR
  hypertherm* OR
  hypotherm* OR
  pre*term OR
  stillbirth OR
  birth*weight OR
  LBW OR
  maternal OR
  pregnan* OR
  gestation* OR
  "pre-eclampsia" OR
  "preeclampsia" OR
  sepsis OR
  oligohydramnios OR
  placenta* OR
  haemorrhage OR
  hemorrhage OR
  malaria OR
  dengue* OR
  mosquito* OR
  chikungunya OR
  leishmaniasis OR
  encephalit* OR
  vector-borne OR
  pathogen OR
  zoonos* OR
  zika* OR
  "west nile" OR
  onchocerciasis OR
  filiariasis OR
  waterborne OR
  diarrhoeal OR
  diarrheal OR
  gastro* OR
  (enteric NOT (fermentation OR "enteric CH4" OR "enteric methane")) OR
  "vibrio bacteria" OR
  cyanobacteria OR
  parasit* OR
  borrelia OR
  paraly* OR
  neurotoxi* OR
  viral OR
  rotavirus OR
  noravirus OR
  hantavirus OR
  cholera OR
  protozoa* OR
  lyme OR
  tick*borne OR
  salmonella OR
  giardia OR
  shigella OR
  campylobacter OR
  food*borne OR
  aflatoxin OR
  poison* OR
  ciguatera OR
  respiratory OR
  allerg* OR
  lung* OR
  asthma* OR
  bronchi* OR
  pulmonary* OR
  COPD OR
  rhinitis OR
  wheez* OR
  mental OR
  depress* OR
  anxi* OR
  PTSD OR
  psycho* OR
  "post*trauma*" OR
  "pre-trauma*" OR
  "pretrauma*" OR
  suicide*
  OR
  (
    (heat 3N (stress OR fatigue OR burn OR burns OR stroke OR exhaustion OR cramp))
    NOT cattle
  )
)
```

The following terms were used to identify mentions of mental health:

```text
'mental',
'depress.*',
'anxi.*',
'PTSD',
'psycho.*',
'post.{0,10}trauma',
'pre.{0,10}trauma',
'suicid.*'
```

## Machine-Learning Classification

We trained four independent binary classifiers to automatically categorise records in the dataset.

For each dimension, the manually annotated publications were used to identify the best possible classifier and tune the hyperparameters to optimise the **F1-score**.

Using the best-performing model, **10-fold cross-validation** was conducted to measure the robustness of the outcomes.

Dimensions where the classifier had an average **F1-score below 70%** were not used in the analysis.

After applying the classifiers to all unseen records, only publications classified as relevant according to the major category classification were included in this indicator, and the remaining publications were discarded.

The same models are used for Indicator 5.3.2, where only data for which all three classifiers assign a **"yes"** are included: relevant (impacts), relevant (major category), and climate category (impacts).

## Classifier Performance

| Dimension (manual annotation count) | Classifier | Precision | Recall | F1-score |
|---|---|---:|---:|---:|
| Relevant (impacts) — yes: 1,445; no: 1,177 | ClimateBERT transformer | 87% (σ=3%) | 82% (σ=3%) | 84% (σ=3%) |
| Relevant (major category) — yes: 1,158; no: 1,191 | SciBERT transformer | 73% (σ=2%) | 93% (σ=2%) | 82% (σ=1%) |
| Climate category: Mitigation — yes: 92; no: 2,257 | TinyBERT transformer | 73% (σ=12%) | 85% (σ=12%) | 78% (σ=11%) |
| Climate category: Adaptation — yes: 433; no: 1,916 | ClimateBERT transformer | 71% (σ=5%) | 88% (σ=7%) | 79% (σ=5%) |
| Climate category: Impacts — yes: 976; no: 1,373 | Regression | 95% (σ=3%) | 88% (σ=2%) | 91% (σ=1%) |
| Attribution type: Scenarios — yes: 111; no: 2,511 | ClimateBERT transformer | 45% (σ=8%) | 78% (σ=10%) | 57% (σ=7%) |
| Climate drivers: CO2 rise — yes: 23; no: 2,599 | Gradient Boosting Machine | 11% (σ=17%) | 40% (σ=52%) | 17% (σ=24%) |
| Climate drivers: Changes in temperature — yes: 814; no: 1,808 | Gradient Boosting Machine | 96% (σ=2%) | 96% (σ=2%) | 96% (σ=2%) |
| Climate drivers: Seasonal Change — yes: 37; no: 2,585 | Gradient Boosting Machine | 8% (σ=4%) | 49% (σ=29%) | 14% (σ=6%) |
| Climate drivers: Changes in precipitation — yes: 353; no: 2,269 | ClimateBERT transformer | 89% (σ=5%) | 93% (σ=5%) | 91% (σ=3%) |
| Climate drivers: Climate Change (unspecified) — yes: 213; no: 2,409 | TinyBERT transformer | 69% (σ=4%) | 80% (σ=11%) | 74% (σ=6%) |
| Climate drivers: Other meteorological variables — yes: 191; no: 2,431 | ClimateBERT transformer | 52% (σ=7%) | 77% (σ=11%) | 62% (σ=7%) |
| Climate drivers: Changes in humidity — yes: 281; no: 2,341 | TinyBERT transformer | 85% (σ=9%) | 93% (σ=4%) | 89% (σ=5%) |
| Extreme event: Floods — yes: 189; no: 2,433 | ClimateBERT transformer | 52% (σ=28%) | 98% (σ=5%) | 64% (σ=20%) |
| Extreme event: Heatwaves — yes: 173; no: 2,449 | ClimateBERT transformer | 31% (σ=2%) | 100% (σ=0%) | 48% (σ=2%) |
| Extreme event: Wildfires — yes: 51; no: 2,571 | Gradient Boosting Machine | 66% (σ=10%) | 82% (σ=20%) | 73% (σ=14%) |
| Extreme event: Extreme cold — yes: 28; no: 2,594 | Gradient Boosting Machine | 59% (σ=22%) | 83% (σ=24%) | 66% (σ=18%) |
| Extreme event: Other extreme events — yes: 58; no: 2,564 | Naive Bayes | 14% (σ=5%) | 71% (σ=16%) | 23% (σ=7%) |
| Extreme event: Storms — yes: 162; no: 2,460 | ClimateBERT transformer | 93% (σ=7%) | 96% (σ=5%) | 94% (σ=4%) |
| Extreme event: Droughts — yes: 83; no: 2,539 | Gradient Boosting Machine | 95% (σ=6%) | 97% (σ=8%) | 96% (σ=6%) |
| Exposure: Reduced agricultural & aquaculture productivity — yes: 59; no: 2,563 | ClimateBERT transformer | 86% (σ=12%) | 93% (σ=12%) | 89% (σ=9%) |
| Exposure: Reduced labour and physical capacity — yes: 30; no: 2,592 | SVM | 10% (σ=1%) | 100% (σ=0%) | 18% (σ=2%) |
| Exposure: Air pollution and allergens — yes: 243; no: 2,379 | ClimateBERT transformer | 96% (σ=4%) | 96% (σ=4%) | 96% (σ=2%) |
| Health impacts: Food safety and security — yes: 132; no: 2,490 | ClimateBERT transformer | 67% (σ=11%) | 84% (σ=6%) | 74% (σ=8%) |
| Health impacts: Mental health and sentiment — yes: 166; no: 2,456 | SciBERT transformer | 85% (σ=10%) | 92% (σ=7%) | 88% (σ=7%) |
| Health impacts: Cardiovascular disease — yes: 150; no: 2,472 | SciBERT transformer | 77% (σ=11%) | 91% (σ=5%) | 83% (σ=6%) |
| Health impacts: Direct injury and death — yes: 104; no: 2,518 | ClimateBERT transformer | 55% (σ=7%) | 77% (σ=15%) | 64% (σ=9%) |
| Health impacts: Infectious diseases — yes: 539; no: 2,083 | ClimateBERT transformer | 87% (σ=6%) | 96% (σ=3%) | 91% (σ=3%) |
| Health impacts: Water safety and security — yes: 80; no: 2,542 | ClimateBERT transformer | 59% (σ=13%) | 90% (σ=13%) | 71% (σ=12%) |
| Health impacts: Mortality and morbidity (general) — yes: 302; no: 2,320 | SciBERT transformer | 70% (σ=3%) | 84% (σ=8%) | 76% (σ=5%) |
| Health impacts: Health system capacity — yes: 53; no: 2,569 | SciBERT transformer | 28% (σ=6%) | 72% (σ=17%) | 40% (σ=9%) |
| Health impacts: Maternal, reproductive and infant health — yes: 55; no: 2,567 | ClimateBERT transformer | 28% (σ=16%) | 81% (σ=21%) | 40% (σ=20%) |
| Health impacts: Renal system — yes: 28; no: 2,594 | Gradient Boosting Machine | 69% (σ=34%) | 60% (σ=30%) | 61% (σ=28%) |
| Health impacts: Metabolic Disorders — yes: 43; no: 2,579 | Gradient Boosting Machine | 28% (σ=18%) | 52% (σ=33%) | 34% (σ=20%) |
| Health impacts: Other / unspecified health impacts — yes: 269; no: 2,353 | SciBERT transformer | 56% (σ=7%) | 66% (σ=9%) | 60% (σ=7%) |
| Health impacts: Respiratory disease — yes: 222; no: 2,400 | ClimateBERT transformer | 82% (σ=4%) | 91% (σ=6%) | 86% (σ=4%) |
| Resource type: Research Article — yes: 46; no: 2,303 | SciBERT transformer | 100% (σ=0%) | 61% (σ=26%) | 73% (σ=21%) |

## Topic Modelling

In addition to this supervised approach, a **Latent Dirichlet Allocation (LDA) topic model** was trained and manually curated.

After fitting and evaluating the topic model, small and stop-word topics were removed and merged.

The remaining **70 topics** were manually grouped into two hierarchical aggregation levels.

## Geographic Classification and Authorship

Finally, `mordecai`, a neural-network-based geoparser, was applied to identify geographical entities mentioned in publication titles or abstracts.

The geoparser automatically matched all mentions of geographic entities to the **GeoNames gazetteer**:

- [GeoNames](https://download.geonames.org/export/dump/)

This allowed country-level resolution and subsequent grouping into:

- Lancet Countdown regions
- WHO regions
- HDI groups

Where available, country information from OpenAlex was used for author affiliations.

Per-capita authorship metrics were adjusted by the population of the respective affiliation countries in the corresponding publication year.

---

## Caveats and Limitations

There exists no complete repository of all scientific literature.

Proprietary academic databases such as Scopus or Web of Science do not return fully reproducible results when testing queries at different points in time or across institutions and are not complete.

Open databases such as Semantic Scholar or OpenAlex provide substantially broader coverage, with around **475 million indexed records**.

However, major publishers increasingly require open repositories to remove abstracts, which renders some records unusable for automated processing.

To mitigate this issue, abstracts are added where they are missing in a local copy of the OpenAlex database where possible.

Nevertheless, while this approach provides comprehensive coverage, some records may still be missed because they do not match the search query due to missing abstracts.

Some deviations over time may also be an artefact of changing data sources and methods used by the OpenAlex team to integrate the data.

The sheer growth and scale of the available scientific literature require automation to categorise the dataset.

As described above, the classifiers are not perfect. This means that the reported numbers for individual categories may be skewed by classification errors.

To remain consistent with previous years, the classification setup was not changed. However, improved models may provide more accurate estimates of the true counts in future analyses.

Furthermore, there is a trade-off between precision and recall in the predicted categories, and alternative approaches could decrease precision in favour of higher recall.

For normalisation, a climate change query used in prior work is applied without additional filtering to that reference data.

Finally, this indicator is limited to **English-language literature only**.
