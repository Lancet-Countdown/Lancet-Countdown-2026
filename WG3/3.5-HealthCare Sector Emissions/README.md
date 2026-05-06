
## Indicator Information

- **Indicator Number:** 3.5  
- **Indicator Name:** Healthcare Sector Emissions  
- **Working Group:** WG3

  ## Context

This indicator was developed for the *2025 Lancet Countdown on Health and Climate Change* report:

Romanello M, Walawender M, Hsu S, et al.  
*The 2025 report of the Lancet Countdown on health and climate change: climate change action offers a lifeline.*  
The Lancet, 2025; 406: 2804–2857.  
https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(25)01919-1/abstract

## Authors

**Matthew J. Eckelman, PhD**  
Professor and Associate Chair of Faculty  
Department of Civil & Environmental Engineering  
Northeastern University  
🔗 https://coe.northeastern.edu/people/eckelman-matthew/  
✉️ m.eckelman@northeastern.edu  

**Jodi Sherman, MD**  
Associate Professor of Anesthesiology and Epidemiology (Environmental Health Sciences)  
Yale School of Medicine, Yale University  
🔗 https://medicine.yale.edu/profile/jodi-sherman/  
✉️ jodi.sherman@yale.edu  

## Brief description of the indicator

This indicator quantifies healthcare sector emissions of GHGs, ozone and PM2.5 using a top-down spend-based method employing the environmentally-extended multi-region input-output (EE-MRIO) model EXIOBASE and health expenditure data, alongside epidemiological models of air pollution-related health damages. For the first time, it also estimates emissions by GHG Protocol Scope 1 (direct on-site emissions); Scope 2 (purchased energy); and Scope 3 (value chain). It matches per-capita greenhouse gas emissions data with the United Nations Development Programme Human Development Index to report healthcare-associated greenhouse gas emissions per capita per year, including direct emissions from healthcare facilities as well as emissions from the consumption of goods and services supplied by other sectors ( 🔗https://lancetcountdown.org/explore-our-data/).

## Data Sources
1.	Environmentally extended multi-region input-output tables: WIOD 2013 release with environmental accounts, latest model year 2011, latest emissions account year 2009, air emissions include CO2, CH4, N2O, NOx, SOx, CO, NMVOC, and NH3;
2.  Per capita health expenditure data is from the World Health Organization’s Global Health Expenditure Database; the latest reporting year is 2019 [10]. Population data is also from the WHO [6]. 
3.	Market exchange rates are from UN Statistics Division [11].
4.  Consumer price indices are from the World Bank [5].
5.	Healthy life expectancy at birth (both sexes) is from the World Health Organization’s Global Health Observatory for reporting year 2019. 

## Code
The Python notebook emissions_calcs_updates_3_9_6.ipynb performs consumption-based greenhouse gas emissions calculations using input–output analysis.

## Caveats
As only total health expenditure data are available from WHO, all expenditures are assigned to Final Demand, with no separation for investment. MRIO models are built from aggregated top-down statistical data. Results do not reflect individual health care systems’ power purchase agreements for renewable energy or any offsetting activities. Results do not include direct emissions of waste anaesthetic gases from clinical operations nor emissions from metered dose inhalers, as these are not currently reported consistently in national emissions inventories.


## Acknowledgements

The authors are very grateful to **Kaixin Huang** and **Melanie Marino** for their contributions to code development.

## References
1.	Watts N, Amann M, Arnell N, et al. The 2019 report of The Lancet Countdown on health and climate change: ensuring that the health of a child born today is not defined by a changing climate. The Lancet 2019; 394(10211): 1836-78.
2.	Miller RE, Blair PD. Input-output analysis: foundations and extensions. Cambridge, UK: Cambridge University Press; 2009.
3.	Dietzenbacher E, Los B, Stehrer R, Timmer M, De Vries G. The construction of world input–output tables in the WIOD project. Economic Systems Research 2013; 25(1): 71-98.
4.	Stadler K, Wood R, Bulavskaya T, et al. EXIOBASE 3: Developing a time series of detailed environmentally extended multi‐regional input‐output tables. Journal of Industrial Ecology 2018; 22(3): 502-15.
5.	WBG. Consumer price index (2010 = 100). 2020. https://data.worldbank.org/indicator/FP.CPI.TOTL?end=2017&locations=US&start=2000.
6.	WHO. Global Health Expenditure Database: Indicators and data. Geneva, Switzerland: World Health Organization; 2019.
7.	Pichler P-P, Jaccard IS, Weisz U, Weisz H. International comparison of health care carbon footprints. Environmental Research Letters 2019; 14(6): 064004.
8.	Health Care Without Harm. Health Care's Climate Footprint: Health Care Without Harm, 2019.
9.	Gütschow J, Jeffery L, Gieseke R, Günther A. The PRIMAP-hist national historical emissions time series (1850-2017). v2.1. 2019. https://doi.org/10.5880/pik.2019.018.
10.	WHO. Current health expenditure by financing schemes, in Global Health Expenditure Database. In: Organization WH, editor.; 2020.
11.	UNSD. Basic Data Selection. United Nations Statistics Division; 2019.
12.	Fullman N, Yearwood J, Abay SM, et al. Measuring performance on the Healthcare Access and Quality Index for 195 countries and territories and selected subnational locations: a systematic analysis from the Global Burden of Disease Study 2016. The Lancet 2018; 391(10136): 2236-71


