## Methods

Information from the 2025 Report indicated that, in 2024, **66% of public health institutions and 72% of medical institutions surveyed worldwide offered climate and health education**, yet only **20% and 64% of enrolled students**, respectively, were reached. Coverage was markedly lower in low and medium HDI countries, and mandatory integration remained limited, highlighting persistent gaps in preparing future health professionals for climate-related risks.

An online survey was conducted to quantify the percentage of **degree-granting nursing institutions** currently providing education and training in climate and health knowledge and skills.

The survey assessed:

- the number of nursing students trained annually at each degree level; and
- the extent to which students gain capacity in climate and health knowledge and analytic skills across core climate and planetary health nursing competency domains.

### Survey Dissemination and Recruitment

To enable global participation and dissemination of the survey instruments, the **Global Consortium on Climate and Health Education (GCCHE)** partnered with multiple international, regional, and national nursing and health-education organisations, as well as global nursing networks.

Survey dissemination relied on a combination of:

- direct outreach to institutional contacts;
- distribution through global partner organisations; and
- snowball sampling, whereby respondents were encouraged to share the survey with colleagues and institutions within their professional networks.

Because dissemination occurred through overlapping partner networks and snowball recruitment, it was not possible to determine the total number of nursing institutions contacted globally.

A letter of invitation to participate in the survey was distributed electronically through partner mailing lists and direct email outreach.

Survey instructions specified that, when climate and health training was offered at an institution, the survey should be completed by:

- faculty members who design or teach climate-, planetary-, or environmental-health-related nursing curricula; or
- faculty or administrators with responsibility for curriculum oversight and familiarity with climate and health content within nursing programmes.

Survey participation was voluntary. To increase response rates, periodic reminder messages were disseminated through partner networks.

Regional targeted surveys were also sent intermittently to areas with low response rates, including countries with **low and medium HDI**.

### Survey Instrument

The nursing education survey instrument included **19 branching questions** designed to assess the current status of climate and health education and training within degree-granting nursing institutions.

Of these:

- **8 questions** addressed the demographic characteristics of the institution and the individual completing the survey; and
- **11 questions** addressed climate and health education and training offerings across undergraduate, graduate, and doctoral nursing programmes.

Responses to demographic questions were mandatory, while responses to the remaining questions were optional and, in some cases, conditional on previous responses.

### Climate and Health Competency Domains

Core climate and health competency domains for nursing education were identified through a review and synthesis of existing climate- and health-related competencies for nurses described in the peer-reviewed literature and those endorsed by professional nursing and health organisations.

For each competency domain, survey participants were asked to rate, using a **Likert scale from 0 to 10**, the extent to which nursing students attain climate and health knowledge and skills, including:

- factual knowledge and understanding;
- application and analysis; and
- leadership and decision-making capacities.

| Nursing Institutions | Competency description |
|---|---|
| **Domain A** | Demonstrate foundational climate science literacy by explaining the causes, mechanisms, and health impacts of climate change, and applying this knowledge. |
| **Domain B** | Identify and respond to direct and indirect effects on mental and physical health using appropriate therapeutic interventions and/or acute/community-based referral strategies. |
| **Domain C** | Incorporate sustainable, patient-centered, and evidence-based practices to reduce climate-related health risks and promote high quality low carbon health care. |
| **Domain D** | Educate patients, families, and communities to build climate health literacy and promote preparedness, adaptive behaviors, and resilience in response to the health impacts of climate change. |
| **Domain E** | Integrate principles of equity and environmental justice into nursing care for all populations, especially those disproportionately affected by climate change. |
| **Domain F** | Use nursing expertise to prepare for, respond to, and support planning, response, and recovery from climate-related emergencies and disasters. |
| **Domain G** | Apply innovative thinking to identify opportunities that contribute to building decarbonized and climate-resilient health systems. |
| **Domain J** | Collaborate with interdisciplinary teams, government agencies, and community partners and stakeholders to develop and implement effective responses to acute and chronic climate-related health challenges. |

### Mandatory Training

**Mandatory training** was defined as any type of education, such as a lecture, module, or training event, to which all students in a health-professional training programme are exposed.

### Survey Review and Translation

The survey instruments were reviewed and vetted by all nursing organisations involved in administering the survey.

A formal **Delphi consensus process** was used to establish agreement among nursing experts on the domain competencies.

The surveys were deemed exempt by the **Columbia University Institutional Review Board**.

The nursing survey was translated into:

- Spanish
- Portuguese
- German
- French
- Italian
- Finnish
- Mandarin
- Arabic
- Greek
- Romanian
- Turkish
- Dutch

prior to dissemination.

### Data Processing and Analysis

Survey responses were collected in **Jotform** and subsequently imported into **RStudio** for analysis.

Responses were first filtered based on the provision of climate and health education by the institution, with non-respondents removed.

Duplicate entries were checked manually, and the most complete form was retained.

Institutional responses were analysed by grouping institutions according to the **United Nations Development Programme (UNDP) Human Development Index (HDI)** based on the physical location of the campus.

Response rates were calculated based on the number of complete survey responses.

Quantitative data provided by respondents were summarised, and qualitative data were counted.

Categorical variables are reported as:

```text
n (%)
```

Continuous variables are reported as:

```text
mean (SD)
```

### Assessment of Climate and Health Knowledge and Skills

To evaluate the degree of knowledge and skills nursing students attain in climate and health, respondents used a Likert scale across the core competency domains.

Scores were interpreted as:

- **1–3:** factual knowledge and understanding
- **4–7:** application and analysis
- **8–10:** leadership and decision-making

Means and standard deviations (**mean (SD)**) were calculated for each domain to assess current climate and health competency across nursing programmes, including:

- doctoral programmes;
- master's programmes;
- bachelor's programmes;
- associate/diploma programmes; and
- vocational programmes.

All survey data were cleaned and analysed in **R version 4.4.2**.

---

## Data

- **Nursing education survey data:** Survey responses provided by **638 degree-granting schools of nursing** between **October 15, 2025 and February 1, 2026**.

- **Human Development Index (HDI):** United Nations Development Programme (UNDP).

---

## Caveats and Limitations

These survey results provide insight into the current state of climate and health education and training within global nursing education; however, several methodological limitations should be noted.

Nursing programmes in **low and medium HDI countries were underrepresented** relative to those in high and very high HDI countries.

As participation was voluntary, responses may be biased toward programmes already engaged in climate and health education, introducing **selection bias**.

The indicator relies on **self-reported data** from nursing faculty or programme leaders, introducing potential reporting bias.

Nursing education varies substantially across regions with respect to educational pathways, degree structures, scopes of practice, and professional certification. These differences may influence how climate and health education is delivered and reported.

The survey included **nursing-midwifery programmes** where midwifery education is integrated within nursing curricula, but excluded stand-alone midwifery programmes, which operate under distinct educational and regulatory frameworks and would require a separate assessment approach.

Efforts to promote global participation included partnerships with regional nursing associations and translation of the survey into multiple languages. Nevertheless, language barriers and distribution challenges may have limited participation in some regions.

There are also potential differences in institutional capacity to participate. Institutions with greater resources may have more time and capacity to respond to the survey.



