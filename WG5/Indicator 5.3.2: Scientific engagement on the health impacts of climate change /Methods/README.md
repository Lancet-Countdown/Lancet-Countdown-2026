# Methods

This indicator tracks **scientific literature on the health impacts of climate change**.

The data are derived directly from **Indicator 5.3.1**, which tracks scientific literature at the intersection of human health and climate change.

Indicator 5.3.1 is based on a systematic map of global research on climate change and health. Records from the open academic literature database **OpenAlex** are automatically classified using a supervised machine-learning model to determine:

- whether the publication is relevant to climate change and health
- whether its main focus is mitigation, adaptation, or impacts

Geographic locations mentioned in article titles or abstracts are also extracted and matched to the **GeoNames gazetteer** using Mordecai.

## Selection of Climate Impact Literature

For Indicator 5.3.2, publications focusing on **climate mitigation** and **adaptation** are excluded.

The analysis is restricted to studies examining the **health impacts of climate change**.

A random sample of **2,600 records** was manually annotated according to several dimensions.

### Climate Drivers

- CO2 rise
- Changes in temperature
- Seasonal change
- Changes in precipitation
- Sea-level rise
- Changes in humidity
- Climate change, unspecified
- Other meteorological variables

### Extreme Events

- Floods
- Heatwaves
- Wildfires
- Extreme cold
- Storms
- Droughts
- Other extreme events

### Health Impacts

- Food safety and security
- Mental health and sentiment
- Cardiovascular disease
- Direct injury and death
- Infectious diseases
- Water safety and security
- Mortality and morbidity, general
- Health system capacity
- Maternal, reproductive and infant health
- Renal system
- Metabolic disorders
- Respiratory disease
- Other or unspecified health impacts

### Exposure Pathways

- Reduced agricultural and aquaculture productivity
- Reduced labour and physical capacity
- Biodiversity loss, ecosystem loss and microbial change
- Air pollution and allergens
- Other exposure

### Attribution Type

- Climate change attribution
- Trend attribution
- Climate sensitivity
- Extreme event attribution
- Scenarios

## Machine-learning Classification

The manually annotated records were used to train a **transformer-based machine-learning classifier**.

The classifier was then applied to the full set of publications previously identified as examining how climate impacts influence human health.

This allows the literature to be automatically classified according to:

- climate drivers
- extreme events
- health impacts
- exposure pathways
- attribution type

## Geographic Attribution

Geographic locations mentioned in the title or abstract of each publication are identified and matched to geographic coordinates.

Studies on climate impacts are then linked with climate-model and observational data.

Human-attributable climate changes are identified using grid-cell-level estimates of anthropogenic changes in:

- temperature
- precipitation

Health impacts identified in the literature are then linked to these attributable climate changes based on the geographic locations mentioned in article titles or abstracts.

This approach identifies studies where observed health impacts associated with climatic conditions occur in locations where the corresponding climate variables have also changed because of human influence.

## Comparability Over Time

The overall approach follows previous versions of the indicator.

However, literature database coverage has improved and the machine-learning classifiers have been strengthened through additional human annotations.

As a result, figures from this analysis are **not directly comparable with those from previous editions**.

# Data

The analysis uses approximately **32,200 bibliographic records** derived from Indicator 5.3.1.

Included records meet all of the following criteria:

- predicted to cover climate impacts
- mention a geographic location in the title or abstract
- the identified location falls within, or overlaps, a grid cell with attributable climate change

Each bibliographic record is supplemented with information on:

- geographic locations mentioned in the title or abstract
- countries of author affiliations from OpenAlex
- research topics
- climate drivers
- extreme events
- health impacts
- exposure pathways
- attribution type

The records are linked to climate-model data using the geographic locations identified in the publications.

Population data are used for normalisation.

The main data sources are:

- **Bibliographic records:** OpenAlex
- **Geographic locations:** GeoNames gazetteer
- **Climate model data:** CMIP3 and CMIP5
- **Population data:** World Bank population data

## Code and Data Availability

The analytical code is available from the [PIK GitLab repository](https://gitlab.pik-potsdam.de/mcc-apsis/living-evidence-maps/climate-health-map).

The raw data are available from [Zenodo](https://zenodo.org/records/19475919).

An interactive version of the literature map is available at [climateliterature.org](https://climateliterature.org).

# Caveats and Limitations

The method cannot fully attribute the health outcomes identified in individual studies directly to human influence on the climate.

Instead, it identifies locations where reported health impacts associated with climatic conditions coincide geographically with changes in those climate variables that are attributable to human influence.

The analysis is also restricted to **English-language literature**.

Only information available in article **titles and abstracts** is used.

This allows broad patterns in the literature to be identified, but does not provide a complete account of all geographic locations studied or the precise context in which each location is mentioned.

The indicator also relies on **automatic machine-learning classification**.

Although a large manually annotated dataset was used to train and validate the classifiers, classification errors remain possible and may differ across categories.

The approach favours **recall**, with the aim of capturing a broad and relatively complete representation of the available literature.

Additional caveats and limitations described for **Indicator 5.3.1** also apply.
