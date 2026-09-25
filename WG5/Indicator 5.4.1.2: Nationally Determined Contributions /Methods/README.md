# Methods

Under the Paris Agreement, Parties submit **Nationally Determined Contributions (NDCs)** to the UNFCCC NDC Registry.

To assess government engagement with the health dimensions of climate change, all available **first through fourth NDCs** were analysed for the presence of health-related terms.

Updated or revised NDCs were treated as separate submissions. Because many initial NDCs were originally submitted as intended NDCs and later formalised, comparing successive iterations provides insight into how recognition of climate-related health risks has changed over time.

## NDC Collection and Processing

All NDCs were downloaded from the **UNFCCC NDC Registry** and organised by iteration using the UNFCCC online database.

European Union standardised NDCs were used to represent EU member states.

Documents were processed in R using the `tabulapdf` package.

Where documents were available only as scanned PDFs, **Tesseract** was used for optical character recognition.

Where translation was required, **Google Translate** was used.

## Identification of Health-related Terms

Health-related search terms were developed iteratively, drawing on previous literature and patterns identified within the NDC documents.

Terms representing health or ill-health were identified using text-analysis tools in R.

Country information was appended to each document to allow aggregation by:

- NDC iteration
- submission year
- Lancet Countdown grouping
- Human Development Index category
- WHO region

A targeted manual review of NDCs within each iteration was conducted to identify false positives and ensure that terms were not captured in irrelevant contexts or counted more than once.

## Health Terms

The following search terms were used.

### Health

- `health`
- `illness`

### Illness

- `illness*`

### Death

- `fatal*`
- `mortal*`
- `loss_of_life`
- `death*`

### Wellbeing

- `wellbeing`

### Disease

- `infectious_disease*`
- `disease*`
- `morbid*`
- `syndrome*`

### Nutrition

- `malnutrition`
- `starvation`
- `undernutrition`
- `nutrition`

### Infectious Disease

- `malaria`
- `chikungunya`
- `dengue`
- `fever*`
- `ebola`
- `zika`
- `leishmaniasis`
- `leptospirosis`
- `epidemic*`
- `typhoid`
- `vector*`
- `aedes`
- `mosquito*`
- `pandemic*`

### Psychological

- `emotion*`
- `psychology*`
- `mental_health`

### Heat

- `heat_stress`
- `heat_disorder*`

### Medical

- `medic*`
- `hospital`
- `hospitali*ation`
- `patients`
- `emergency_department`
- `A&E`
- `diagnos*`
- `clinical`

### Injury

- `injur*`

### COVID

- `covid`
- `corona*`
- `sars_cov_II`
- `sars_cov_2`

# Data

The indicator uses:

- **NDC text:** UNFCCC Nationally Determined Contributions Registry

# Caveats and Limitations

Updates to existing NDCs and entirely new submissions are treated as successive NDC iterations without distinction.

Although an updated NDC may differ in nature from a completely new submission, this distinction does not affect the assessment of the relative importance given to health within the documents.
