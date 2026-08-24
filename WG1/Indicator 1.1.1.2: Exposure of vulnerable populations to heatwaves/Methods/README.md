## Methods

### Heatwave Definition

Heatwave effects on human health are a growing concern worldwide, particularly for vulnerable populations such as **older adults and infants**. However, there is no universally accepted definition of a heatwave, and studies use different temperature thresholds, durations, and metrics to characterise these events.<sup>7</sup>

For this analysis, a **heatwave** was defined as a period of **three or more consecutive days** during which both the daily minimum and maximum temperatures exceeded the **95th percentile of the local climatology**.

This definition follows the approach used by the World Meteorological Organization (WMO) in *Heatwaves and Health: Guidance on Warning-System Development*.<sup>8</sup> The dual-threshold definition captures both:

* direct heat stress associated with high daytime temperatures; and
* physiological strain associated with insufficient nighttime cooling.<sup>9,10</sup>

Two climatological baseline periods were used:

* **1986–2005:** reference baseline period
* **2006–2015:** baseline aligned with the Paris Agreement period

### Temperature Data and Heatwave Calculation

Daily 2-metre air temperature data were obtained from the **European Centre for Medium-Range Weather Forecasts (ECMWF) ERA5-Land reanalysis dataset**,<sup>11</sup> available at a global spatial resolution of **0.1° × 0.1°**.

For each grid cell and each year from **1980 to 2025**, we calculated **heatwave duration**, defined as the total number of days per year occurring within a heatwave.

### Heatwave Exposure

Exposure to heatwaves among vulnerable populations was estimated by combining gridded heatwave occurrence data with gridded demographic datasets.

For each grid cell, annual heatwave exposure was calculated in **person-days** as:

**Heatwave exposure = Heatwave days × Population**

where:

* **Heatwave days:** total number of heatwave days in the grid cell during the year
* **Population:** number of individuals from the relevant vulnerable population group residing in that grid cell

Total annual heatwave exposure for each vulnerable group was obtained by summing person-days across all grid cells.

We also calculated the **average number of heatwave days experienced per person** by dividing total person-days by the total population of the corresponding vulnerable group for that year.

### Decadal Average Exposure

Decadal average heatwave exposure was calculated by aggregating annual heatwave exposure counts across each decade and dividing by the cumulative population over the same period.

This approach avoids taking a simple arithmetic mean of annual exposure estimates, which would give equal weight to years with different population sizes.

### Vulnerable Population Groups

The analysis focused on two demographic groups that are particularly susceptible to heat-related health impacts.

#### Older adults (≥65 years)

Age-related reductions in thermoregulatory capacity, including reduced sweating, become increasingly important from approximately age 65.<sup>12</sup> In addition, the prevalence of underlying chronic conditions, including cardiovascular, renal, and respiratory diseases, increases with age and can further increase susceptibility to heat stress.<sup>13</sup>

#### Infants (<1 year)

Infants are particularly vulnerable to heat because of their high surface-area-to-mass ratio, which can be up to four times greater than that of adults, together with their limited behavioural ability to avoid or respond to excessive heat exposure.<sup>14</sup>

### Population Data

To construct a continuous annual time series of gridded population distributions from **1980 to 2025**, three demographic datasets were combined.

#### 1980–1999

We used the **Lancet Countdown 2023 population dataset**,<sup>15</sup> derived from the ISIMIP Histsoc dataset and NASA GPWv4 land-area data.

The original data were available at **0.25° × 0.25°** resolution and were regridded to match the **0.1° × 0.1° ERA5-Land grid**. Population counts were redistributed from the coarser grid to the finer grid while preserving total population and excluding ocean cells.

#### 2000–2014

We used global gridded demographic data from the **WorldPop project**<sup>16</sup>, available at approximately **1 km × 1 km** resolution and generated using the top-down unconstrained approach.

Age- and sex-specific population groups were aggregated and subsequently regridded to the ERA5-Land grid by summing population counts within each **0.1° × 0.1°** grid cell.

#### 2015–2025

For the most recent period, we used the **updated WorldPop dataset**.<sup>17</sup> Age-specific population estimates were aggregated to the ERA5-Land grid by summing population counts within each grid cell.

### Age-Group Aggregation

For **infants (<1 year)**, population counts corresponding to the 0–1-year age group were extracted from the respective demographic datasets.

For **older adults (≥65 years)**, population counts were calculated by summing the following age groups:

* 65–70 years
* 70–75 years
* 75–80 years
* 80+ years

