# Methods

WNV is a mosquito-borne virus that is pathogenic to humans. WNV is maintained by reservoir birds and transmitted by mosquitoes of the genus *Culex*. Although preferring birds, *Culex* mosquitoes are opportunistic and can bite humans, potentially transmitting the virus. WNV can replicate in humans, causing infection, but humans cannot transmit the virus onward, i.e., humans are dead-end hosts.

About 20–25% of WNV infections in humans develop into West Nile fever, while about 1% develop into West Nile neuroinvasive disease (WNND), which is fatal in about 10% of cases. As there are no therapeutic drugs or vaccines against WNV licensed for use in humans, the virus presents a public health concern.

In the USA alone, more than 60,000 human cases have been reported since the introduction of the virus into the country in 1999. In Europe, outbreaks of WNV have become more widespread and intense over recent decades. The largest outbreaks in Europe were recorded in 2018 and 2024, with more than 2,000 and 1,400 autochthonous human infections, respectively. Despite WNV having an almost global distribution, there is less data from other regions of the world as surveillance is not widely established.

Climate, land use, and socio-economic conditions influence WNV transmission by affecting the proliferation of the ectothermic mosquitoes and avian reservoir ecology, including species abundance, diversity, and mobility.

This indicator focuses on changes in WNV transmission potential determined by the temperature-dependent mosquito life cycle, behaviour, and vector competence. Experimentally established evidence on temperature-dependent mosquito-pathogen traits is used to approximate changes in the WNV transmission potential caused by temperature shifts. This allows insights into the impacts of climate change on WNV.

Based on previously published work, the responses of mosquito-pathogen traits to temperature were embedded into a mechanistic transmission model to derive a temperature-dependent transmission suitability index \(S(T)\) for three key WNV vectors:

- *Culex pipiens*
- *Culex quinquefasciatus*
- *Culex tarsalis*

\(S(T)\) isolates the temperature dependence of the WNV transmission potential and describes a unimodal response with species-specific lower and upper temperature limits, beyond which mosquito proliferation is hindered, and an optimum temperature that balances the trade-offs among traits.

The epidemiological relevance of this metric for human health outcomes has been demonstrated by close agreements between observed peak WNND incidences in the United States and Europe with the model’s predicted optimal temperature for transmission. For WNV, this optimum occurs at moderate temperatures between **23–26°C**, varying across mosquito species.

## WNV Temperature Suitability Metric

A mathematical formulation of the WNV temperature suitability metric is given by:

$$
S(T)=
\frac{
M^{*}(T)a(T)^2b_M(T)e^{-\mu_M(T){EIP}(T)}
}{
\mu_M(T)
}
$$

The temperature-dependent mosquito-pathogen traits are:

- Adult mosquito biting rate \(a(T)\)
- Mosquito infection probability \(b_M(T)\)
- Adult mosquito mortality rate \(\mu_M(T)\)
- Length of the extrinsic incubation period \({EIP}(T)\)

Additionally, \(M^{*}(T)\) is a relative proxy for mosquito abundance derived from a mosquito population dynamics model and is given by:

$$
M^{*}(T)=
\begin{cases}
\displaystyle
\frac{\omega^2\beta(T)p_E(T)\delta_J(T)^2}
{\mu_M(T)^2}
\left[
1-
\frac{\mu_M(T)}
{\omega\beta(T)p_{EJ}(T)}
\right],
&
\displaystyle
\frac{\omega\beta(T)p_{EJ}(T)}
{\mu_M(T)}
\leq 1
\\
0,
&
\text{else}
\end{cases}
$$

The mosquito abundance formulation includes additional temperature-dependent traits:

- Egg laying rate
- Egg viability
- Juvenile development rate
- Egg-to-adult survival probability

The proportion of female mosquitoes at adult emergence is assumed to be **0.5**.

The temperature dependence of traits is based on published estimates of temperature responses from laboratory experimental data.

The resulting median estimates for \(S(T)\) of *Culex pipiens*, *Culex quinquefasciatus*, and *Culex tarsalis* were used to calculate temperature suitability from ambient temperature data.

The \(S(T)\) estimates were scaled to **[0,1]**, with \(S(T)=1\) at the species-specific optimal transmission temperature and \(S(T)=0\) beyond the temperature limits.

## Climate Data and Spatial Analysis

Monthly averaged **2 m air temperature** data from ERA5-Land were used as input to calculate \(S(T)\) monthly at a **0.1° × 0.1° spatial resolution**.

The species-specific \(S(T)\) was applied within each vector's distribution range described by georeferenced versions of the approximate species distribution maps.

To obtain a combined global indicator, in areas where *Culex pipiens* and *Culex quinquefasciatus* overlap in the Americas, Asia, and Australia, the temperature responses of the two species were averaged and scaled back to **[0,1]**.

In these regions there is typically genetic introgression between the two species, and it was assumed that the resulting hybrid populations would yield an \(S(T)\) temperature response "in between" that of the original species.

For overlapping regions in Africa, where *Culex pipiens* and *Culex quinquefasciatus* do not substantially hybridise, and for overlapping regions with *Culex tarsalis*, the maximum of the \(S(T)\) estimates was taken.

This was based on the simplifying assumption that the species with the highest \(S(T)\) would dominate WNV transmission.

The gridded combined monthly estimates were aggregated by:

- Country
- WHO region
- Lancet Countdown (LC) region
- Human Development Index (HDI) group

## Comparison Periods

Average temperature suitability estimates for the most recent decade, **2016–2025**, were compared with a **1981–1990 baseline**.

In addition, a more recent baseline of **2006–2015** was considered to reveal changes in WNV temperature suitability since the 2015 Paris Agreement.

Differences in trends between decades were quantified by estimating and comparing the slopes of linear models fitted within each decade.


## Data
	1. Monthly 2m air temperature data: ERA5-Land, the European Centre for Medium-Range Weather Forecasts (ECMWF)
  
	2. Mosquito species distribution maps: Shocket et al. (2020)

## Caveats & Limitations
The indicator is limited to three WNV vectors and their spatial distribution. Areas outside of the mosquitoes’ distribution range are not covered by the calculations. The mosquito distribution ranges are incorporated based on static and crude distribution maps. Therefore, the indicator does not track expansions or contractions in the distribution of the mosquito species and inaccuracies at the edge of the distribution and for small islands have to be expected. Moreover, intraspecific variation in the temperature response of the mosquito-pathogen traits is not considered. Currently, the indicator isolates the effects of temperature on the WNV transmission potential via the mosquito-pathogen traits. It does not consider other processes that contribute to WNV risk, such as mosquito competition and host population dynamics, nor does it capture additional impacts of climatic changes, like altered precipitation patterns. Unlike the closely related basic reproduction number, S(T) is neither a threshold parameter for outbreaks nor an absolute measure of secondary infections. It tracks temperature-induced changes in the WNV transmission potential determined by the thermal biology and ecology of WNV vectors.
