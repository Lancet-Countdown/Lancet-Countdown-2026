setwd("D://KM//GCCHE//Data")
library(tidyverse)
library(countrycode)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggpubr)
library(WDI)


##Lancet Dataset Clean----------------------------------------------------------
ld <- read_csv('lancet_global_nursing_data_raw.csv')
str(ld)

##Totals
ld %>% distinct(idno) %>% summarise(n = n()) #n=638 Nursing Schools
ld %>% group_by(country_iso3) %>% summarise(n=tally()) 
n_distinct(ld$country_iso3) #n=87 countries


#How many institutes provide climate and health education
n_distinct(ld$idno)   # 638

tab <- ld %>%
  distinct(idno, chcurr_inst) %>%
  count(chcurr_inst) %>%
  mutate(chcurr_inst = as.character(chcurr_inst),
         pct = round(100 * n / sum(n), 1))

bind_rows(tab, tibble(chcurr_inst = "Total", n = sum(tab$n), pct = 100))

#How many students are reached
ld %>%
  distinct(idno, .keep_all = TRUE) %>%
  summarise(total_students = sum(as.numeric(as.character(nost_inst_f)), na.rm = TRUE),
            n_institutions = n(),
            n_missing = sum(is.na(nost_inst)))

#How many students receive climate and health education
ld %>%
  distinct(idno, .keep_all = TRUE) %>%
  mutate(students = as.numeric(as.character(nost_inst_f))) %>%
  summarise(total_cch_students = sum(students[chcurr_inst == "Yes"], na.rm = TRUE),
            total_students     = sum(students, na.rm = TRUE),
            pct_students       = round(100 * total_cch_students / total_students, 1))

#Survey Timeline
#October 15 2025 - February 2 2026

#Climate and Health Education

##Parsing out which institutions require (chcurr_req), provide as elective (chcurr_ele), or as concentration or certificate (chcurr_indep)
#By Requirement
a <- ld %>% 
  select(idno, vt_chcurr_required, assoc_chcurr_required, bach_chcurr_required,
         master_chcurr_required, doc_chcurr_required) %>% 
  distinct() %>%                                   # <- one row per institution
  pivot_longer(cols = ends_with("_chcurr_required"),
               names_to = "degree_type",
               values_to = "chcurr_req") %>% 
  mutate(nursingdegreeprogram_cat = case_when(
    degree_type == "vt_chcurr_required"     ~ 1,
    degree_type == "assoc_chcurr_required"  ~ 2,
    degree_type == "bach_chcurr_required"   ~ 3,
    degree_type == "master_chcurr_required" ~ 4,
    degree_type == "doc_chcurr_required"    ~ 5),
    chcurr_req = !is.na(chcurr_req))

#As a concentration or certificate
b <- ld %>% 
  select(c(idno, vt_chcurr_indep, assoc_chcurr_indep, bach_chcurr_indep, master_chcurr_indep, doc_chcurr_indep)) %>% 
  distinct() %>%      
  pivot_longer(cols = ends_with("_chcurr_indep"),
               names_to = 'degree_type',
               values_to = 'chcurr_ind') %>% 
  mutate(nursingdegreeprogram_cat = case_when(
    degree_type == 'vt_chcurr_indep' ~ 1,
    degree_type == 'assoc_chcurr_indep' ~ 2,
    degree_type == 'bach_chcurr_indep' ~ 3,
    degree_type == 'master_chcurr_indep' ~ 4,
    degree_type == 'doc_chcurr_indep' ~ 5),
    chcurr_ind = if_else(is.na(chcurr_ind),FALSE,TRUE))

#As an elective
c <- ld %>% 
  select(c(idno, vt_chcurr_elect, assoc_chcurr_elect, bach_chcurr_elect, master_chcurr_elect, doc_chcurr_elect)) %>% 
  distinct() %>%      
  pivot_longer(cols = ends_with("_chcurr_elect"),
               names_to = 'degree_type',
               values_to = 'chcurr_ele') %>% 
  mutate(nursingdegreeprogram_cat = case_when(
    degree_type == 'vt_chcurr_elect' ~ 1,
    degree_type == 'assoc_chcurr_elect' ~ 2,
    degree_type == 'bach_chcurr_elect' ~ 3,
    degree_type == 'master_chcurr_elect' ~ 4,
    degree_type == 'doc_chcurr_elect' ~ 5),
    chcurr_ind = if_else(is.na(chcurr_ele),FALSE,TRUE))


##Overalls by HDI
hdi_group <- ld %>% distinct(idno, .keep_all = TRUE) %>% 
  select(c(idno, country_iso3, countryname_lc, chcurr_inst, hdi, nost_inst_f)) %>% group_by(hdi) %>% 
  summarise(n_countries = n_distinct(countryname_lc),
            n_country_cch_yes = n_distinct(country_iso3[chcurr_inst == "Yes"]),
            perc_countries_cch = n_country_cch_yes/n_countries,
            n_inst = (n_distinct(idno)),
            n_inst_cch_yes = n_distinct(idno[chcurr_inst == "Yes"]),
            perc_inst_cch = n_inst_cch_yes/n_inst,
            n_students_yes = sum(nost_inst_f[chcurr_inst == "Yes"], na.rm = TRUE),
            n_students = sum(nost_inst_f),
            perc_student_cch = n_students_yes/n_students)


#climate and health education by HDI
hdi_education <- ld %>% distinct(idno, .keep_all = TRUE) |> select(c(idno, country_iso3, countryname_lc, chcurr_inst, hdi)) %>% 
  filter(chcurr_inst=='Yes') %>% 
  left_join(a %>% group_by(idno) %>% summarise(chcurr_req_any = any(chcurr_req, na.rm = TRUE),.groups = "drop"), by = c('idno')) %>% 
  left_join(b %>% group_by(idno) %>% summarise(chcurr_ind_any = any(chcurr_ind, na.rm = TRUE),.groups = "drop"), by = c('idno')) %>%
  left_join(c %>% group_by(idno) %>% summarise(chcurr_ele_any = any(chcurr_ele, na.rm = TRUE),.groups = "drop"), by = c('idno')) %>%
  group_by(hdi) %>% 
  summarise(n_institutions = n(),
            n_yes = sum(chcurr_inst == 'Yes'),
            pct_yes = 100 * n_yes / n_institutions,
            n_countries = n_distinct(countryname_lc),
            n_country_cch_yes = n_distinct(country_iso3[chcurr_inst == "Yes"]),
            perc_countries_cch = n_country_cch_yes/n_countries,
            n_inst = (n_distinct(idno)),
            n_inst_cch_yes = n_distinct(idno[chcurr_inst == "Yes"]),
            perc_inst_cch = n_inst_cch_yes/n_inst,
            n_required = sum(chcurr_req_any, na.rm = TRUE),
            pct_required = 100 * n_required / n_institutions,
            n_indep = sum(chcurr_ind_any, na.rm = TRUE),
            pct_indep = 100 * n_indep / n_institutions,
            n_elect = sum(chcurr_ele_any, na.rm = TRUE),
            pct_elect = 100 * n_elect / n_institutions,
            .groups = "drop") #%>% select(c(hdi, n_elect, pct_elect))



##climate and health education by nursing degree program
ld %>% 
  select(idno, hdi, nursingdegreeprogram_inst, nursingdegreeprogram_cat, chcurr_inst) %>% 
  distinct(idno, nursingdegreeprogram_inst, .keep_all = TRUE) %>% 
  left_join(a %>% select(idno, nursingdegreeprogram_cat, chcurr_req), by = c("idno", "nursingdegreeprogram_cat")) %>% 
  left_join(b %>% select(idno, nursingdegreeprogram_cat, chcurr_ind), by = c("idno", "nursingdegreeprogram_cat")) %>% 
  left_join(c %>% select(idno, nursingdegreeprogram_cat, chcurr_ele), by = c("idno", "nursingdegreeprogram_cat")) %>% 
  group_by(nursingdegreeprogram_inst) %>% 
  summarise(n_institutions = n(),
            n_yes        = sum(chcurr_inst %in% "Yes"),
            pct_yes      = round(100 * n_yes / n_institutions, 1),
            n_required   = sum(chcurr_req, na.rm = TRUE),
            pct_required = round(100 * n_required / n_institutions, 1),
            n_indep      = sum(chcurr_ind, na.rm = TRUE),
            pct_indep    = round(100 * n_indep / n_institutions, 1),
            n_elect      = sum(chcurr_ele, na.rm = TRUE),
            pct_elect    = round(100 * n_elect / n_institutions, 1),
            .groups = "drop")

##number of students by HDI
ld %>% select(c(idno, hdi, nost_inst, nost_inst_f, chcurr_inst)) %>% 
  distinct() %>%  
  left_join(a %>% group_by(idno) %>% summarise(chcurr_req_any = any(chcurr_req, na.rm = TRUE),.groups = "drop"), by = c('idno')) %>% 
  left_join(b %>% group_by(idno) %>% summarise(chcurr_ind_any = any(chcurr_ind, na.rm = TRUE),.groups = "drop"), by = c('idno')) %>%
  left_join(c %>% group_by(idno) %>% summarise(chcurr_ele_any = any(chcurr_ele, na.rm = TRUE),.groups = "drop"), by = c('idno')) %>%
  group_by(hdi) %>%
  summarise(
    students_total      = sum(nost_inst_f, na.rm = TRUE),
    students_chcurr_yes = sum(nost_inst_f[chcurr_inst == "Yes"], na.rm = TRUE),
    students_required   = sum(nost_inst_f[chcurr_req_any == TRUE], na.rm = TRUE),
    students_indep      = sum(nost_inst_f[chcurr_ind_any == TRUE], na.rm = TRUE),
    students_elect      = sum(nost_inst_f[chcurr_ele_any == TRUE], na.rm = TRUE),
    .groups = "drop")

##Grouped by LC Region
##Overalls by LC
lc_group <- ld %>% 
  distinct(idno, .keep_all = TRUE) %>%                      # one row per institution
  select(idno, country_iso3, chcurr_inst, grouping_lc, nost_inst_f) %>% 
  mutate(students = as.numeric(as.character(nost_inst_f)),
         cch_yes  = chcurr_inst %in% "Yes") %>%
  group_by(grouping_lc) %>% 
  summarise(n_countries        = n_distinct(country_iso3),
            n_country_cch_yes  = n_distinct(country_iso3[cch_yes]),
            perc_countries_cch = round(100 * n_country_cch_yes / n_countries, 1),
            n_inst             = n_distinct(idno),
            n_inst_cch_yes     = n_distinct(idno[cch_yes]),
            perc_inst_cch      = round(100 * n_inst_cch_yes / n_inst, 1),
            n_students_yes     = sum(students[cch_yes], na.rm = TRUE),
            n_students         = sum(students, na.rm = TRUE),
            perc_student_cch   = round(100 * n_students_yes / n_students, 1))


#climate and health education by LC
lc_education <- ld %>% 
  distinct(idno, .keep_all = TRUE) %>%
  select(idno, country_iso3, chcurr_inst, grouping_lc) %>% 
  mutate(cch_yes = chcurr_inst %in% "Yes") %>%
  left_join(a %>% group_by(idno) %>% summarise(chcurr_req_any = any(chcurr_req, na.rm = TRUE), .groups = "drop"), by = "idno") %>% 
  left_join(b %>% group_by(idno) %>% summarise(chcurr_ind_any = any(chcurr_ind, na.rm = TRUE), .groups = "drop"), by = "idno") %>%
  left_join(c %>% group_by(idno) %>% summarise(chcurr_ele_any = any(chcurr_ele, na.rm = TRUE), .groups = "drop"), by = "idno") %>%
  group_by(grouping_lc) %>% 
  summarise(
    # all institutions
    n_countries        = n_distinct(country_iso3),
    n_country_cch_yes  = n_distinct(country_iso3[cch_yes]),
    pct_countries_cch  = round(100 * n_country_cch_yes / n_countries, 1),
    n_inst             = n(),
    n_inst_cch_yes     = sum(cch_yes),
    pct_inst_cch       = round(100 * n_inst_cch_yes / n_inst, 1),
    # among institutions offering climate & health education
    n_required   = sum(cch_yes & chcurr_req_any %in% TRUE),
    pct_required = round(100 * n_required / n_inst_cch_yes, 1),
    n_indep      = sum(cch_yes & chcurr_ind_any %in% TRUE),
    pct_indep    = round(100 * n_indep / n_inst_cch_yes, 1),
    n_elect      = sum(cch_yes & chcurr_ele_any %in% TRUE),
    pct_elect    = round(100 * n_elect / n_inst_cch_yes, 1),
    .groups = "drop")

##Grouped by WHO Region
who_group <- ld %>% 
  distinct(idno, .keep_all = TRUE) %>%                      # one row per institution
  select(idno, country_iso3, chcurr_inst, whoregion, nost_inst_f) %>% 
  mutate(students = as.numeric(as.character(nost_inst_f)),
         cch_yes  = chcurr_inst %in% "Yes") %>%
  group_by(whoregion) %>% 
  summarise(n_countries        = n_distinct(country_iso3),
            n_country_cch_yes  = n_distinct(country_iso3[cch_yes]),
            perc_countries_cch = round(100 * n_country_cch_yes / n_countries, 1),
            n_inst             = n_distinct(idno),
            n_inst_cch_yes     = n_distinct(idno[cch_yes]),
            perc_inst_cch      = round(100 * n_inst_cch_yes / n_inst, 1),
            n_students_yes     = sum(students[cch_yes], na.rm = TRUE),
            n_students         = sum(students, na.rm = TRUE),
            perc_student_cch   = round(100 * n_students_yes / n_students, 1))


#climate and health education by WHO Region
who_education <- ld %>% 
  distinct(idno, .keep_all = TRUE) %>%
  select(idno, country_iso3, chcurr_inst, whoregion) %>% 
  mutate(cch_yes = chcurr_inst %in% "Yes") %>%
  left_join(a %>% group_by(idno) %>% summarise(chcurr_req_any = any(chcurr_req, na.rm = TRUE), .groups = "drop"), by = "idno") %>% 
  left_join(b %>% group_by(idno) %>% summarise(chcurr_ind_any = any(chcurr_ind, na.rm = TRUE), .groups = "drop"), by = "idno") %>%
  left_join(c %>% group_by(idno) %>% summarise(chcurr_ele_any = any(chcurr_ele, na.rm = TRUE), .groups = "drop"), by = "idno") %>%
  group_by(whoregion) %>% 
  summarise(
    # all institutions
    n_countries        = n_distinct(country_iso3),
    n_country_cch_yes  = n_distinct(country_iso3[cch_yes]),
    pct_countries_cch  = round(100 * n_country_cch_yes / n_countries, 1),
    n_inst             = n(),
    n_inst_cch_yes     = sum(cch_yes),
    pct_inst_cch       = round(100 * n_inst_cch_yes / n_inst, 1),
    # among institutions offering climate & health education
    n_required   = sum(cch_yes & chcurr_req_any %in% TRUE),
    pct_required = round(100 * n_required / n_inst_cch_yes, 1),
    n_indep      = sum(cch_yes & chcurr_ind_any %in% TRUE),
    pct_indep    = round(100 * n_indep / n_inst_cch_yes, 1),
    n_elect      = sum(cch_yes & chcurr_ele_any %in% TRUE),
    pct_elect    = round(100 * n_elect / n_inst_cch_yes, 1),
    .groups = "drop")

##Grouped by Country
iso3_group <- ld %>% 
  distinct(idno, .keep_all = TRUE) %>%                      # one row per institution
  select(idno, country_iso3, countryname_lc, chcurr_inst, nost_inst_f) %>% 
  mutate(students = as.numeric(as.character(nost_inst_f)),
         cch_yes  = chcurr_inst %in% "Yes") %>%
  group_by(country_iso3) %>% 
  summarise(countryname_lc   = first(countryname_lc),
            country_cch_yes  = any(cch_yes),
            n_inst           = n_distinct(idno),
            n_inst_cch_yes   = n_distinct(idno[cch_yes]),
            perc_inst_cch    = round(100 * n_inst_cch_yes / n_inst, 1),
            n_students_yes   = sum(students[cch_yes], na.rm = TRUE),
            n_students       = sum(students, na.rm = TRUE),
            perc_student_cch = round(100 * n_students_yes / n_students, 1),
            .groups = "drop") %>% 
  left_join(iso3_education, by = "country_iso3")


#Education by Country
iso3_education <- ld %>% 
  distinct(idno, .keep_all = TRUE) %>%
  select(idno, country_iso3, chcurr_inst) %>% 
  mutate(cch_yes = chcurr_inst %in% "Yes") %>%
  left_join(a %>% group_by(idno) %>% summarise(chcurr_req_any = any(chcurr_req, na.rm = TRUE), .groups = "drop"), by = "idno") %>% 
  left_join(b %>% group_by(idno) %>% summarise(chcurr_ind_any = any(chcurr_ind, na.rm = TRUE), .groups = "drop"), by = "idno") %>%
  left_join(c %>% group_by(idno) %>% summarise(chcurr_ele_any = any(chcurr_ele, na.rm = TRUE), .groups = "drop"), by = "idno") %>%
  group_by(country_iso3) %>% 
  summarise(
    n_inst_cch_yes = sum(cch_yes),
    # among institutions offering climate & health education
    n_required   = sum(cch_yes & chcurr_req_any %in% TRUE),
    pct_required = if_else(n_inst_cch_yes > 0, round(100 * n_required / n_inst_cch_yes, 1), NA_real_),
    n_indep      = sum(cch_yes & chcurr_ind_any %in% TRUE),
    pct_indep    = if_else(n_inst_cch_yes > 0, round(100 * n_indep / n_inst_cch_yes, 1), NA_real_),
    n_elect      = sum(cch_yes & chcurr_ele_any %in% TRUE),
    pct_elect    = if_else(n_inst_cch_yes > 0, round(100 * n_elect / n_inst_cch_yes, 1), NA_real_),
    .groups = "drop") %>% 
  select(country_iso3, n_required, pct_required, n_indep, pct_indep, n_elect, pct_elect)
