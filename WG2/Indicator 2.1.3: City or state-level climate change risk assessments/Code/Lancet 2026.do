****************************
****************************
**** Prof. Karyn Morrissey university of Galway
**** Base Data Cities Adaptation 2025
**** Lancet Indictor 2.3.1
****************************
****************************




********************
********************
*** Climate Risk and Vulnerability
********************
********************
 
insheet using "/Users/karynmorrissey/Documents/Lancet2026/2025_FullCities_ClimateAssessment.csv",  clear

rename cdp_disclosing_org_number cityid
rename discloser_country_or_area country
rename hasaclimateriskandvulnerabilitya assessment2025

drop disclosure_cycle cdp_requesting_org_number requesting_organization row_order row_name

sort country


merge country using "/Users/karynmorrissey/Documents/Lancet2026/2006CountryNames.dta"

drop _merge
replace hdi = "Very High" if country  == "Monaco"
replace hdi =  "Low" if country  == "State of Palestine"

drop if cityid == .
sort country
egen countryid = group(country)

*(1.1) Has a climate risk and vulnerability assessment been undertaken for your jurisdiction? If not, please indicate why.
*** Linked to HDI

gen ReasonsRA = 1 if assessment2025 == "Yes, a climate risk and vulnerability assessment has been undertaken"
replace ReasonsRA = 2 if assessment2025 == "No, but we are intending to undertake one in the next two years"
replace ReasonsRA = 3 if assessment2025 == "No, but we are currently undertaking one and it will be complete in the next year"
replace ReasonsRA = 4 if assessment2025 == "No, and we are not intending to undertake due to lack of financial capacity and expertise/technical capacity"
replace ReasonsRA = 5 if assessment2025 == "No, and we are not intending to undertake due to lack of financial capacity"
replace ReasonsRA = 6 if assessment2025 == "No, and we are not intending to undertake due to lack of expertise/technical capacity"
replace ReasonsRA = 7 if ReasonsRA == .


save "/Users/karynmorrissey/Documents/Lancet2026/Cities_RiskAssessment2025.dta", replace

*************************
*************************
***Public Health Data
****(4.8) Report on how climate change impacts health outcomes and health services in your jurisdiction.
***** Health Area - Public Health, Health Care Systems, Health Adj...
*************************
*************************


import delimited "/Users/karynmorrissey/Documents/Lancet2026/2025_FullCities_Health.csv", varnames(1) clear 

rename cdp_disclosing_org_number cityid
rename discloser_country_or_area country

drop if col1_healthareaaffectedbyclimate == ""

sort country
merge country using "/Users/karynmorrissey/Documents/Lancet2026/2006CountryNames.dta"
drop if _merge == 2
drop _merge


egen countryid = group(country)

egen healthreporting = group(cityid)

encode col1_healthareaaffectedbyclimate, gen (HealthArea)


tab HealthArea, gen (HealthAreas)
rename HealthAreas1 HA_HealthAdj
rename HealthAreas2 HA_DNK
rename HealthAreas3 HA_HealthOutcomes
rename HealthAreas4 HA_HealthSystems
rename HealthAreas5 HA_UnableMeas



*** Takes out duplicates
sort cityid 
by cityid : replace HealthArea = . if HealthArea == HealthArea[1] & _n > 1


gen HealthImpacted = 1 if HA_HealthOutcomes == 1| HA_HealthSystems == 1| HA_HealthAdj == 1
replace HealthImpacted = 0 if HealthImpacted ==.

replace HA_DNK = 0 if HealthImpacted == 1
encode hdi, gen (hdi1)

***** Collapse for Specific analysis

collapse hdi1 HA_HealthAdj-HealthImpacted, by (cityid)

replace HA_HealthOutcomes = 1 if HA_HealthOutcomes != 0
replace HA_HealthSystems = 1 if HA_HealthSystems != 0
replace HA_HealthAdj = 1 if HA_HealthAdj != 0
replace HA_DNK = 1 if HA_DNK != 0
replace HA_UnableMeas = 1 if HA_UnableMeas != 0

replace HealthImpacted = 1 if HealthImpacted != 0
replace HA_UnableMeas = 0 if HealthImpacted == 1
replace HA_DNK = 0 if HealthImpacted == 1

*****End of Health System

********************
********************
***** Health related climate Hazards.... extreme heat, etc
********************
********************


rename col2_identifytheclimatehazardsth HealthColumn2
split HealthColumn2, parse(|) gen(Health_CH)
split Health_CH1, parse(:) gen(Health_CHx)


gen extremeheat = 0
replace  extremeheat = 1 if Health_CH1 == "Extreme heat"

gen Urbanflooding = 0
replace  Urbanflooding = 1 if Health_CH1 == "Urban flooding"

gen Heatstress = 0
replace  Heatstress = 1 if Health_CH1 == "Heat stress"

gen Infectiousdisease = 0
replace  Infectiousdisease = 1 if Health_CH1 == "Infectious disease"

drop Health_CH1-Health_CHx2


********************
********************
***** Health Issue.... Vector borne diseases, etc
********************
********************

rename col3_identifythehealthissuesdriv HealthColumn3

split HealthColumn3, parse(|) gen(HealthBurden)
split HealthBurden1, parse(:) gen(Health_BurdenX)

rename Health_BurdenX1 Health_Burden

gen HeatRelatedIll = 0
replace  HeatRelatedIll = 1 if Health_Burden == "Heat-related illnesses"
gen VBI = 0
replace  VBI = 1 if Health_Burden == "Vector-borne infections and illnesses"
gen ncd_resp = 0
replace  ncd_resp = 1 if Health_Burden == "Exacerbation of non-communicable disease symptoms - respiratory disease"
drop HealthBurden1-Health_BurdenX2

collapse hdi1 healthreporting HA_HealthAdj HA_DNK HA_HealthOutcomes HA_HealthSystems HA_UnableMeas HealthImpacted extremeheat Urbanflooding Heatstress Infectiousdisease HeatRelatedIll VBI ncd_resp, by (cityid)

replace extremeheat = 1 if extremeheat != 0
replace Urbanflooding = 1 if Urbanflooding != 0
replace Heatstress = 1 if Heatstress != 0
replace Infectiousdisease = 1 if Infectiousdisease != 0
replace HeatRelatedIll = 1 if HeatRelatedIll != 0

replace VBI = 1 if VBI != 0
replace ncd_resp = 1 if ncd_resp != 0
replace HealthImpacted = 1 if HealthImpacted != 0

replace HA_HealthOutcomes = 1 if HA_HealthOutcomes != 0
replace HA_HealthSystems = 1 if HA_HealthSystems != 0
replace HA_HealthAdj = 1 if HA_HealthAdj != 0
replace HA_DNK = 1 if HA_DNK != 0
replace HA_UnableMeas = 1 if HA_UnableMeas != 0




****************************
****************************
**** Adaptation Action & Co-Benefits 
****************************
****************************

*** Need to re-import Base Data

import delimited insheet using "/Users/karynmorrissey/Documents/Lancet2026/2025_FullCities_adaptation.csv", clear
rename cdp_disclosing_org_number cityid
rename discloser_country_or_area country

sort country
egen countryid = group(country)

merge country using "/Users/karynmorrissey/Documents/Lancet2026/2006CountryNames.dta"

drop if _merge == 2
drop _merge
encode hdi, gen (hdi1)

egen adaptreporting = group(cityid)

****************************
****************************
*** Adaptation Action - 11 options
****************************
****************************
split col2_action, parse(:) gen(action)
drop action2 action3 action4 action5

****************************
****************************
*** Sector related to adaptation
split col5_sectorsadaptationactionappl, parse(|) gen(SectorApplied)
split SectorApplied1, parse(:) gen(SectorAppliedX)
drop SectorApplied1-SectorApplied23 SectorAppliedX2 SectorAppliedX3
****************************
****************************

****************************
****************************
*** Co-benefits of adapation: Health
****************************
****************************

split col7_cobenefitsrealized, parse(|) gen(cobenefit)
drop cobenefit2-cobenefit29

split cobenefit1, parse(:) gen(cobenefitX)
keep if cobenefitX1 == "Public Health"
