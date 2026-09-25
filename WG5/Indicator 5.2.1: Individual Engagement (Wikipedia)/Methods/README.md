
# Methods

This indicator tracks **public engagement with climate change and health through Wikipedia usage**.

Wikipedia is one of the most visited websites globally and is widely used as a source of health information. The Wikimedia Foundation makes article-level traffic data publicly available, providing a global, daily measure of public attention.

## Indicator

To investigate public attention to the relationship between climate change and health, this indicator uses **Wikipedia clickstream data**.

Clickstream data record, on a monthly basis, which Wikipedia article a user came from and which article they navigated to.

By identifying article pairs where one article relates to climate change and the other relates to health, the indicator generates a monthly measure of global attention to the health consequences of climate change.

## Measurement Strategy

The use of Wikipedia clickstream data as a proxy for public engagement with climate change and health is based on three premises:

1. Wikipedia is a globally used source of information across a wide range of topics.
2. People use Wikipedia to obtain information about topics in which they are interested.
3. Tracking engagement with Wikipedia articles related to climate change and health can provide an indication of public engagement with the relationship between these topics.

Several behavioural patterns are relevant to interpreting this measure.

### Direct engagement with climate change and health

A user may already be interested in the relationship between climate change and health and directly access an article covering both topics, such as:

- [Effects of climate change on human health](https://en.wikipedia.org/wiki/Effects_of_climate_change_on_human_health)

### From climate change to health

A user may initially seek information about climate change and subsequently become interested in its health consequences.

For example:

**Climate change → Malnutrition**

### From health to climate change

A user may initially seek information about a health issue or a consequence relevant to human health and subsequently navigate to information about climate change.

For example:

**Malaria → Climate change**

## Indicator Construction

To use Wikipedia traffic as a proxy for public engagement with climate change and health, relevant articles first need to be identified.

A semi-automated approach is used to construct two sets of Wikipedia articles:

- climate change-related articles
- health-related articles

An initial set of keywords is used to identify potentially relevant articles through Wikipedia's internal search function.

## Climate Change Keywords

The climate change seed keywords include:

*carbon dioxide, carbon emission, carbon neutral, carbon neutrality, carbon-dioxide, carbon-neutral, changing climate, climat, climate action, climate change, climate crisis, climate decay, climate emergency, climate neutrality, climate pollutant, climate variability, co2, co2 emission, decarbonisation, decarbonization, extreme temperature, extreme weather, ghge, ghges, glacial, global environmental change, global warming, green house, green new, greenhouse, greenhouse-gas, ipcc, low carbon, net zero, net-zero, ozone, renewable energy, sea ice, sea level, sphere, temperature record.*

## Health Keywords

The health seed keywords include:

*air pollution, asthma, cancer, communicable disease, diagnosis, diarrhoea, disease, diseases, disorder, epidemic, epidemics, epidemiolog, epidemiology, epidemy, fever, health, health care, healthcare, hunger, icide, illness, illnesses, infection, infectious, itis, malaria, malnourishment, malnutrition, measles, mental disorder, mental disorders, morbidity, mortality, ncd, ncds, non-communicable disease, noncommunicable disease, nutrition, osis, pandemic, pandemics, pediatric, pneumonia, psychiatric, public health, sars, stunting, syndrome.*

## Article Processing

For each keyword search, the first **100 search results** are retrieved.

Articles are retained where they contain at least **300 words**. This threshold is used to ensure that the selected seed articles have received a minimum level of editorial development and are therefore more likely to link to other relevant Wikipedia articles.

The categories associated with these articles are then screened to identify additional relevant pages.

For example, relevant categories include:

- Climate change
- Effects of climate change

Potential additional articles are filtered using the initial keyword lists.

For health-related articles, irrelevant results are manually excluded, with priority given to topics that could, in principle, be linked to climate change.

The Wikipedia article **Effects of climate change on human health** is also used as an additional source of curated links to relevant health-related articles.

The complete article list is available in the [Lancet Countdown Wikipedia 2026 GitHub repository](https://github.com/simonmunzert/lancet-countdown-wikipedia-2026).

## Second-level Pages

The analysis also includes **second-level pages** linked from the core climate change and health article sets.

Users do not necessarily move directly between a climate change article and a health article. They may navigate through an intermediate article.

For example:

**Climate change → Human impact on the environment → Respiratory disease**

Including second-level pages allows the indicator to capture clickstream pathways that pass through relevant intermediary articles rather than moving directly between the two core topic groups.

## Differences in Article Set Size

The number of health-related articles is larger than the number of climate change-related articles.

This does not invalidate the approach because health represents a broader subject area.

The indicator is based on patterns of navigation and co-visitation between climate change and health-related articles rather than on the relative number of articles belonging to each topic.

# Data

The indicator uses publicly available data from the **Wikimedia Foundation**.

Data include Wikipedia access through:

- desktop computers
- mobile browsers
- mobile applications

## Clickstream Data

Wikipedia clickstream data record monthly transitions between a referring Wikipedia article and a destination article.

The data are available from the [Wikimedia Dumps](https://dumps.wikimedia.org/other/clickstream/).

Automated spider traffic generated by bots crawling Wikipedia is excluded.

Referrer-destination article pairs with fewer than **10 clicks** are removed from the original Wikimedia clickstream dataset. The indicator may therefore slightly underestimate total clickstream traffic.

Clickstream data are available from **November 2017 onwards**.

For this indicator, the analysis covers **2019–2025** and is restricted to the **English-language Wikipedia**.

## Pageview Data

Wikipedia pageview data are obtained through the Wikimedia RESTful API and the `pageviews` client.

Pageview data are used to:

- help identify relevant Wikipedia articles
- measure daily article-level page views


# Caveats and Limitations

Wikipedia clickstream data are available only in aggregate form.

They cannot be linked to individual users or geolocated.

The English-language Wikipedia accounts for a substantial proportion of global Wikipedia traffic and is among the most visited websites globally, making it useful as a broad indicator of public attention.

However, restricting the analysis to the English-language Wikipedia introduces a bias towards **English-speaking users and countries**.

The indicator should also be interpreted as an **online proxy for broader public engagement**, rather than as a direct measure of offline public awareness or attitudes.

Results are also sensitive to the selection of climate change and health-related articles.

Survey-based measures of public engagement could provide a useful complementary measure and could help validate the Wikipedia-based indicator in future analyses.
