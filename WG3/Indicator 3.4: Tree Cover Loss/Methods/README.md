# Methods

This indicator focuses on all vegetation **five metres or taller** and areas with at least **30% tree cover density**.

Tree cover loss was defined as the disturbance of a forest patch or the complete removal of the tree cover canopy at the pixel scale of the satellite image. This loss can occur due to human activities, such as forestry practices including timber harvesting and deforestation, as well as natural causes, such as disease or storm damage.

The data area totalled **128.8 million km²** and included all global land except Antarctica and several Arctic islands.

This approach used satellite imagery from **2001 to 2022** at a **30 × 30 metre resolution** to measure global tree cover loss. The dataset used in this study included Landsat 7 Enhanced Thematic Mapper Plus (ETM+) scenes of the growing season.

The dataset was pre-processed using automated Landsat pre-processing steps, including:

- Image resampling
- Conversion of raw digital numbers (DN) to top-of-atmosphere (TOA) reflectance
- Cloud, shadow, and water screening
- Quality assessment (QA)
- Image normalisation

The training data for percent tree cover and forest loss were used to relate to the time-series metrics using a decision tree.

Decision trees are hierarchical classifiers that predict class membership by recursively partitioning a dataset into more homogeneous or fewer than three varying subsets, referred to as nodes.

For the tree cover and change products, a **bagged decision tree methodology** was employed.

Forest loss was disaggregated to annual time scales using a set of heuristics derived from:

- The maximum annual decline in percent tree cover
- The maximum annual decline in minimum growing season Normalised Vegetation Difference Index (NDVI)

Trends in annual forest loss were derived using an **ordinary least squares slope** of the regression of:

- \(y\) = annual loss
- \(x\) = year

## Drivers of Tree Cover Loss

To identify the various types of tree cover loss, such as deforestation, forestry, wildfire, urbanisation, and shifting agriculture, a **decision tree model (recursive partitioning model)** was used.

The model used true/false conditions of data values to predict the most likely driver of tree cover loss for each grid cell.

To estimate the proportion of tree cover loss drivers, a sample-based approach and stratified random sampling were used, and confidence intervals were calculated.

The model was able to differentiate between permanent conversion (deforestation) and temporary loss due to forestry or wildfire.

The overall accuracy of the model was **89%**, with individual class accuracies ranging from **55% for urbanisation** to **94% for deforestation**.

The difference in accuracy may stem from the scale of these drivers across regions, making them harder to detect and classify correctly at **1 km resolution**.

The seven drivers are defined as follows:

| Driver | Definition |
|---|---|
| **Hard Commodities** | Tree cover loss due to the establishment or expansion of mining or energy infrastructure. |
| **Logging** | Forest management and logging activities occurring within managed, natural or semi-natural forests and plantations, often with evidence of forest regrowth or planting in subsequent years. |
| **Permanent Agriculture** | Long-term, permanent tree cover loss for small- to large-scale agriculture. This includes perennial tree crops such as oil palm, cacao, and rubber; orchards and nut trees; and pasture and seasonal crops and cropping systems, which may include a fallow period. |
| **Settlements & Infrastructure** | Tree cover loss due to expansion and intensification of roads, settlements, urban areas, or built infrastructure not associated with other classes. |
| **Shifting Cultivation** | Tree cover loss due to small- to medium-scale clearing for temporary cultivation that is later abandoned and followed by subsequent regrowth of secondary forest or vegetation. Clearing land for temporary cultivation may involve burning. |
| **Wildfire** | Tree cover loss due to fire with no visible human conversion or agricultural activity afterwards. Fires may be caused by natural events, such as lightning, or by human activities, whether accidental or deliberate. |
| **Other Natural Disturbances** | Tree cover loss due to other non-fire natural disturbances, including storms, flooding, landslides, drought, windthrow, lava flows, sediment flow or meandering rivers, natural flooding, insect outbreaks, etc. If tree cover loss due to natural causes is followed by salvage or sanitation logging, it is classified as logging. |

Permanent agriculture is the leading driver of tree cover loss.

Permanent agriculture, hard commodities, and the expansion of settlements and infrastructure are likely to result in permanent tree cover loss and therefore are indicative of deforestation.

The dataset does not indicate the stability or condition of land cover after tree cover loss, nor does it distinguish between natural and anthropogenic wildfires.

---

## Caveats and Limitations

### Exclusion of Certain Disturbances

The model does not include disturbances such as insect outbreaks, wind and ice storms, flooding, or river changes in course.

These disturbances were found to be highly localised and temporally restricted, affecting only **1% of all model validation sample cells**.

### Misclassification Issues

The model had low accuracy for the commodity-driven deforestation class in Africa, with much of it misclassified as shifting cultivation.

In northern forests, especially in Russia, distinguishing between drivers was challenging in areas where wildfires spread through previously logged areas or where logging occurred after a fire event.

### Lack of Detailed Differentiation

This indicator does not map changes in forest conditions over time in landscapes dominated by shifting agriculture, nor does it differentiate primary from secondary forest clearing within this land-use class.

Differentiating key drivers, such as row crops from pasturelands in South America or tree plantations from disturbed natural forests in Southeast Asia, could enhance the analysis.

### Net Change

Due to changes in the methodology for generating global data over time, the values for **Tree Cover, Tree Cover Loss, and Tree Cover Gain cannot be compared accurately**.

Net loss cannot be estimated as a simple difference between Tree Cover Loss Gain and Tree Cover Loss.
