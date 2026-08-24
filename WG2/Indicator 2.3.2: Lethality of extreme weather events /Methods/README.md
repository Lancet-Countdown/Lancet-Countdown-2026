# Methods

Flood and storm early warning systems provide important benefits to human health by reducing exposure to hazardous conditions and enabling timely protective action.

Early warnings allow individuals and authorities to evacuate, protect property, and prepare health and emergency services before floodwaters arrive, thereby reducing mortality and injury associated with flood events.

By limiting direct exposure to contaminated floodwater and disrupted sanitation systems, early warning systems also help reduce the risk of waterborne and infectious diseases that commonly increase following flooding, including gastrointestinal and respiratory illness.

In addition, preparedness enabled by advance warning can reduce the severity of displacement and traumatic exposure, which are key drivers of post-flood mental health impacts such as anxiety, depression, and post-traumatic stress disorder.

Although quantitative evidence directly linking flood early warning systems to specific health outcomes remains limited, public health and disaster risk reduction literature consistently identifies early warning and preparedness as critical mechanisms for reducing the overall health burden of flooding through decreased exposure and improved emergency response coordination.

## Disaster Data

Disaster-level data from the **EM-DAT database** were used, retaining individual flood and storm events from **2006 onwards** without aggregation to the country-year level, thereby preserving within-country variability in event severity.

Each event's total death count was used as the outcome.

From the EM-DAT database:

- **Deaths**, as a proxy of the lethality of weather-related disasters, are defined as the number of people who lost their life because the disaster happened.
- **People affected** are defined as those requiring immediate assistance during a period of emergency, including basic survival needs such as food, water, shelter, sanitation, and immediate medical assistance.

National population estimates from the **UN World Population Prospects 2024** were merged to each event and entered as an offset (log-transformed) to model mortality rates per capita.

## Health Early Warning System Classification

Health Early Warning System (**HEWS**) classification was obtained from the **2021 WHO Health and Climate Change Global Survey**.

Given the nested structure of the data, with events occurring within countries, a **multilevel negative binomial regression** was fitted using `glmmTMB`, with a random intercept by country to account for clustering.

Fixed effects included:

- HEWS status
- HDI group
- Disaster type
- Period: **2006–2015 vs 2016–2025**

A second model replaced period with a continuous year trend interacted with HEWS status to estimate differential annual rates of change.

---

## Data

- **EM-DAT:** Centre for Research on the Epidemiology of Disasters (CRED), Université Catholique de Louvain, Belgium.
- **Population:** World Bank, World Development Indicators, *Population, total*.
- **Human Development Index (HDI):** United Nations Development Programme, Human Development Reports.
- **HEWS classification:** 2021 WHO Health and Climate Change Global Survey.

---

## Caveats and Limitations

The EM-DAT database contains a number of possible biases.

First, there is a possible bias from missing disaster events because of under-reporting. EM-DAT classifies an event as a disaster if one or more of the following criteria are met:

- 10 or more people die
- 100 or more people are affected
- A state of emergency is declared
- A call for international assistance is made

Similarly, there are likely biases in how countries report both the number of deaths and people affected.

Numbers of deaths, for example, may not include mortality from the cascading risks of natural hazards or deaths that occur as a result of longer causal chains from the hazard.

Second, estimates of the numbers of people affected have different biases across countries because of how the concept of affected people is defined. This must be considered when comparing countries.

The combination of two different datasets may also not be fully compatible, as the HEWS information from the **2021 WHO survey does not have a clear starting implementation year**.
