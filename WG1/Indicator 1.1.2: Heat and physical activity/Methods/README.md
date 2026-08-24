# Methods

The methodology of this indicator is based on the updated version of the **Sports Medicine Australia Extreme Heat Policy (SMA EHP v2)**.

The indicator uses a set of environmental variables:

- Temperature
- Relative humidity
- Mean radiant temperature
- Wind speed

and personal variables:

- Clothing
- Metabolic rates

as inputs for the **Predicted Heat Strain (PHS) model (ISO 7933:2023)**.

Given a set of environmental and personal input variables, the outputs of the PHS model include estimated sweat rate and core temperature. The outputs of the PHS model are then translated into categories of heat stress risk:

- Low
- Moderate
- High
- Extreme

These categories are used to provide geospatially resolved, population-weighted estimates of annual exposure, expressed as **hours per person per year**, to environmental conditions posing:

- **Any risk** of heat stress, defined as at least moderate risk or higher
- **Extreme risk** of heat stress

during outdoor walking at a brisk pace.

These two categories of heat stress risk were used because of their impacts on the mitigation strategies required to protect human health during physical activity. For example:

- **Any risk** of heat stress during physical activity necessitates rapid implementation of additional rest breaks and active cooling strategies, such as water dousing.
- **Extreme risk** of heat stress indicates that physical activity should be avoided entirely.

The personal factors for brisk walking were obtained from Table 1 presented by Tartarini *et al.*

The environmental variables required for hourly estimates of heat stress risk using the SMA EHP v2 were obtained from:

- European Centre for Medium–Range Weather Forecasts (ECMWF) ERA5 climate reanalysis
- ERA5-HEAT datasets

Relative humidity was derived from 2-meter dew point temperature by applying Antoine’s equation to estimate water vapour pressure and expressing it relative to saturation vapour pressure at the given hourly 2-meter temperature.

Wind speed was set constant at the self-generated velocity for brisk walking (**0.5 m·s⁻¹**).

All spatiotemporal data from the ERA5 reanalysis and ERA5-HEAT datasets were provided on an hourly rectangular grid with a spatial resolution of **0.25° × 0.25°** (approximately **31 km × 31 km**).

A solar calendar was created using the `suncalc` R package to determine whether a given hour within a given ERA5 grid cell was between sunrise and sunset times, i.e. daylight.

The SMA EHP v2 was used to calculate the annual number of daylight hours in each ERA5 grid cell where environmental conditions posed:

- Any risk, i.e. at least moderate risk or higher
- Extreme risk

of heat stress during physical activity.

These annual hours of risk exposure were population-weighted by multiplying each grid cell by its respective population count, as provided by the **GHS-POP R2023A residential population dataset**.

This population dataset provides a spatial raster of the world population at 5-year intervals. Population counts were linearly interpolated between the 5-year intervals on a cell-by-cell basis.

The population-weighted estimates were then summed for all grid cells within a given country and subsequently divided by the total population of that country in that year.

This weighting scheme yielded the average **exposure-hours per person per year** to environmental conditions posing any and extreme risk of heat stress during light, outdoor physical activity, i.e. brisk walking.

---

## Updates Introduced for 2026

The first update to this indicator in 2026 is the inclusion of an additional reference period of **2006–2015**.

This reference period was chosen because it reflects the decade immediately preceding the enactment and enforcement of the Paris Agreement in 2016.

The methodology for this indicator has also been updated from the 2025 report of the Lancet Countdown.

In previous versions of this indicator, estimates of the risk of heat stress during physical activity were assessed using the **Sports Medicine Australia Extreme Heat Policy published in 2021 (SMA EHP v1)**.

In the current report, the indicator has transitioned to the newer **SMA EHP v2**, which:

- Improves the estimation of heat stress risk in very hot and dry extremes
- Adjusts for self-generated wind speed according to the input mode of physical activity

Another update to this indicator was the use of the **GHS-POP R2023A population dataset**.

This choice was motivated by the following reasons:

- The GHS-POP dataset covers the entire range of data for this analysis period, i.e. **1990–2025**
- It distributes population spatially by incorporating built-up volume
- Its population totals are based on the newer **UN World Population Prospects 2022** and **World Urbanization Prospects 2018** city data

This differs from the **Gridded Population of the World (GPWv4.11 UN WPP)** used in the previous indicator, which is based on the UN-WPP 2015 revision.

---

## Data

- **World Bank ADM0 Shapefiles** for country boundaries
- **Global Human Settlement Layer (GHSL) population grid (1975–2030)** for global spatial population counts
- **2-meter temperature and dew point temperature:** European Centre for Medium–Range Weather Forecasts ERA5 reanalysis
- **Mean radiant temperature:** ERA5-HEAT

---

## Caveats and Limitations

Heat stress risk for each exercise intensity classification may differ among people due to various risk factors.

For example, older adults or people taking certain medications may experience reductions in sweating, which compromises their ability to keep cool and could elevate their exertional heat stress risk at a given combination of temperature and humidity.

Other groups that may have greater heat stress risk include:

- Young children
- People wearing heavy clothing
- People living with disabilities
- People living with chronic diseases

A more detailed interpretation model of the heat effects of exercise would incorporate individual factors such as:

- Age
- Health status
- Clothing

It is also worth noting that this indicator assumes that population counts for an entire year are likewise applicable to each hourly grid cell.

This may not be true, but it still provides a rough estimate of population assuming an even rate of influx and outflux from each cell at the country level.
