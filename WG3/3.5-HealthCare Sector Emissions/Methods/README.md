## Methodology

This project estimates healthcare-associated greenhouse gas (GHG) emissions per capita per year, including both:

- Direct emissions from healthcare facilities  
- Indirect emissions from goods and services supplied by other sectors  

Healthcare expenditures from the WHO Global Health Expenditure Database (GHED) are mapped to the *Health and Social Work* sector within an environmentally extended multi-regional input–output (EE-MRIO) model. Consumption-based emissions are calculated using the standard Leontief inverse approach.

---

## Data 

This analysis utilized EXIOBASE 3.8.2, a global multi-regional environmentally extended input-output (EE-MRIO) database covering 44 countries and 5 rest-of-world (RoW) regions. Although, more recent versions of EXIOBASE exist (v3.9) the previous version (v3.8) was used as results calculated with EXIOBASE v3.9 displayed inconsistent and implausible results that could not be readily explained. Additionally, as the satellite table format was changed with this version update, a characterization table was not available, impeding the calculation of DALYs, which involves matching across multiple environmental accounts. EXIOBASE v3.8.2 MRIO model was used for this analysis, with EXIOBASE tables in euros. 
However, the 2022 dataset from EXIOBASE v.3.8.2 exhibited severe inconsistencies in emissions multipliers that could not be reconciled, so 2021 dataset was used. Accounting for this, 2022 WHO expenditure data in nominal US dollars expenditures were deflated to 2021 using consumer price indices from the World Bank.200,201 

---

## Methods
This indicator is in the form of healthcare-associated GHG emissions per capita per year, including direct emissions from healthcare facilities as well as emissions from the consumption of goods and services supplied by other sectors. Results are calculated by assigning aggregate national health expenditures from WHO to final demand for ‘Health and Social Work’ sectors in the EE-MRIO model.  Environmental satellite accounts including GHG emissions accompany each EE-MRIO model. Consumption-based GHG emissions are then calculated using the standard Leontief inverse technique.197 

The Leontief inverse is calculated as: L = (I-A)-1.

Where:
-	I = identity matrix.
-	A = technical coefficient matrix.
  
The multiplier matrix M represents the total (direct plus indirect) environmental requirements per until of final demand, and is derived from the Leontief invers matrix combined with environmental intensity coefficients, shown by the following formula:

M = SL

Where:
-	S = factor of production coefficients by sector.
-	L = Leontief inverse matrix.
  
Total requirement factors, or impact coefficients, for GHG emissions (GWP100) were extracted from the EXIOBASE 3.8.2 M matrix, representing characterized emissions in units of kg CO₂eq per Million EUR of final demand for the 'Health and Social Work' sector. Similarly, impact coefficients for health impacts attributable to PM2.5 and ozone exposure, expressed as disability-adjusted life years (DALYs), were extracted from the EXIOBASE 3.8.2 M matrix in units of DALYs per Million EUR of final demand.

For the 44 countries explicitly modelled in EXIOBASE, country-specific emission multipliers were assigned directly. For countries not individually represented in EXIOBASE, rest-of-world regional multipliers were assigned according to WHO regional classifications: South-East Asia and Western Pacific Region, European Region, African Region, Region of the Americas, and Eastern Mediterranean Region.

To calculate healthcare sector emissions and DALYs, the extracted impact coefficients were multiplied by deflated national health expenditures with appropriate currency conversion. Calculations can be expressed by the following formulas:

Per capita GHG Emissions (kg CO₂eq) = GHG_coeff * pc_che_usd * CF / 1,000,000

Total GHG emissions (Mt CO₂eq) = Per capita GHG Emissions * (pop * 1,000) / 1,000,000,000

Total PM2.5 DALYs = PM2.5_DALYs_coeff * che_usd * CF  

Total Ozone DALYs = Ozone_DALYs_coeff * che_usd * CF 

Total DALYs = Total PM2.5 DALYs + Total Ozone DALYs

Where:
-	GHG_coeff = Impact coefficient in units of kg CO₂eq/Million EUR
-	DALYs_coeff = Impact coefficient in units of DALYs/Million EUR
-	pc_che_usd = Current Health Expenditure (CHE) per Capita in US$
-	che_usd = Current Health Expenditure (CHE), in million current US$
-	CF = USD > EUR economic adjustment factor for data year, pulled from native WHO data for Eurozone countries.
-	Pop = Population (in thousands)

Independent research by Pichler et al. on CO2 emissions (excluding other GHGs) associated with health care in OECD countries considered temporal trends and introduced adjustments into the emissions satellite accounts of the EE-MRIO model EORA to reflect shifts in major GHG emissions sources that occurred between the baseline model year and when each healthcare expenditure occurred.  Based on this approach, to adjust results to reflect 2022 conditions, expenditures calculated with the EXIOBASE3 2021 model were updated using the PRIMAP dataset, containing historical greenhouse gas emissions data for countries and sectors. Expenditures calculated with the EXIOBASE 2021 model were then multiplied by the 2021-2022 growth rate from the corresponding sector, extracted from PRIMAP data. However, PRIMAP data did not exist for Palestine (PSE), Tuvalu (TUV) or Nauru (NRU), so the original, unadjusted value was used.




## Implementation

All EE-MRIO modeling and calculations are performed in Python using the `pymrio` library.
---
## Contact
For further details regarding the methodology or data, please contact the indicator authors.

## References
References
1.	Watts N, Amann M, Arnell N, et al. The 2019 report of The Lancet Countdown on health and climate change: ensuring that the health of a child born today is not defined by a changing climate. The Lancet 2019; 394(10211): 1836-78.
197.	Miller RE, Blair PD. Input-output analysis: foundations and extensions. Cambridge, UK: Cambridge University Press; 2009.
198.	Dietzenbacher E, Los B, Stehrer R, Timmer M, De Vries G. The construction of world input–output tables in the WIOD project. Economic Systems Research 2013; 25(1): 71-98.
199.	Stadler K, Wood R, Bulavskaya T, et al. EXIOBASE 3: Developing a time series of detailed environmentally extended multi‐regional input‐output tables. Journal of Industrial Ecology 2018; 22(3): 502-15.
200.	WBG. Consumer price index (2010 = 100). 2020. https://data.worldbank.org/indicator/FP.CPI.TOTL?end=2017&locations=US&start=2000.
201.	WHO. Global Health Expenditure Database: Indicators and data. Geneva, Switzerland: World Health Organization; 2019.
202.	Pichler P-P, Jaccard IS, Weisz U, Weisz H. International comparison of health care carbon footprints. Environmental Research Letters 2019; 14(6): 064004.
203.	Health Care Without Harm. Health Care's Climate Footprint: Health Care Without Harm, 2019.
204.	Gütschow J, Jeffery L, Gieseke R, Günther A. The PRIMAP-hist national historical emissions time series (1850-2017). v2.1. 2019. https://doi.org/10.5880/pik.2019.018.
205.	WHO. Current health expenditure by financing schemes, in Global Health Expenditure Database. In: Organization WH, editor.; 2020.
206.	UNSD. Basic Data Selection. United Nations Statistics Division; 2019.
207.	Fullman N, Yearwood J, Abay SM, et al. Measuring performance on the Healthcare Access and Quality Index for 195 countries and territories and selected subnational locations: a systematic analysis from the Global Burden of Disease Study 2016. The Lancet 2018; 391(10136): 2236-71

