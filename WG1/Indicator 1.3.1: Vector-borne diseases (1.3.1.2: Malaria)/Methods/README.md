# Methods

The malaria suitability indicator tracks the historical climatic suitability for *Anopheles* mosquitoes, specifically in relation to the two main malaria-causing parasites: *Plasmodium falciparum* and *Plasmodium vivax*.

Suitability is defined as the coincidence of several climatic factors:

- Monthly precipitation exceeding 80 mm
- Relative humidity greater than 60%
- Average temperatures ranging from 16–32°C for *P. vivax*
- Average temperatures ranging from 18–32°C for *P. falciparum*

The defined thresholds are based on the consensus from the scientific literature.

## Table. Suitability Thresholds for Malaria Pathogens Transmitted by *Anopheles* spp.

| Genus/Species | Temperature (°C) | Relative Humidity (%) | Precipitation (mm/month) |
|---|---:|---:|---:|
| *P. falciparum* | 18–32 | >60 | 80 |
| *P. vivax* | 16–32 | >60 | 80 |

Climate data were extracted from the Copernicus Climate Data Store via ERA5 monthly re-analysis for the full time-series (1981–2025).

The spatial (gridded at 0.25° × 0.25°) and temporal (monthly) granularity of the ERA5 reanalysis data forms the resolution of the model output.

Two-metre temperature (in Kelvin) and 2-metre dew point temperature (in Kelvin) were transformed into degrees Celsius:

\[
T(°C) = T(K) - 273.15
\]

Monthly precipitation (in m/s) was converted to millimetres per month as:

\[
P(\text{mm/month}) = P(\text{m/s}) \times 3600 \times 24 \times 30.44 \times 1000
\]

Using temperature and dew point temperature, relative humidity was calculated using the August-Roche-Magnus equation:

$$
RH = 100 \frac{\exp\left(\frac{aT_d}{b+T_d}\right)}
{\exp\left(\frac{aT}{b+T}\right)}
$$

where:

- \(a = 17.625\)
- \(b = 243.04\)
- \(T_d\) refers to dew point temperature
- \(T\) refers to air temperature

We compared two time periods in our analysis, the baseline period of **1981–1960** and the comparator **2016–2025**, to highlight changes in suitability, expressed as the change in the number of suitable months per year.

We then stratified our results by different categories including:

- Topography
- Regional boundaries
- Socioeconomics

Altitude data were obtained from WorldClim and regridded from their original spatial resolution (0.1667°) to the spatial resolution of the climatic suitability data (0.25°) by averaging within each grid.

Country boundaries were obtained from the World Bank, and regional boundaries were obtained from the Lancet Countdown (LCD) and the World Health Organization (WHO).

Socioeconomic stratification was performed using the United Nations 2025 Human Development Index (HDI) grouping of each country, which was used to assign every grid cell a categorical score from low to very high.

Finally, we compared our resulting climatic suitability maps with malaria incidence data from the Malaria Atlas Project (MAP).

Malaria incidence maps for *P. falciparum* and *P. vivax* at 5 km resolution were downloaded from the project website and regridded to the coarser resolution of the climatic suitability maps by averaging.

We mapped areas where climatic suitability and malaria incidence agree and disagree, and computed Spearman’s correlation coefficients between the two indicators:

- Globally
- By region

---

## Data

- **Climate data:** Monthly 2-metre dew point temperature, 2-metre air temperature, and precipitation — ERA5, European Centre for Medium-Range Weather Forecasts (ECMWF)
- **Altitude:** WorldClim, 2017
- **Malaria incidence rate:** Malaria Atlas Project, 2024

---

## Caveats and Limitations

Our indicator tracks how, in the context of a changing climate, the specific conditions suitable for malaria transmission fluctuate, particularly when and where these conditions become more or less suitable.

Thus, this indicator should not be interpreted as a direct measure of *Anopheles* presence or malaria disease risk and should rather be interpreted in the context of the changing climatic suitability for the vector and parasites.

Land cover and land use change will affect *Anopheles* distribution, and this is not captured in this analysis but can be partially addressed in future versions of the indicator.

Moreover, *Anopheles* is a broad genus of mosquito, with many species that are likely to have slight differences in climatic and habitat preferences. This analysis is therefore limited by its approach of neglecting *Anopheles* species-specific thresholds.

Finally, we are not able to explore the impacts of immunity and control measures on changing malaria risk, but acknowledge that there are likely interactions between these factors and climatic variables.
