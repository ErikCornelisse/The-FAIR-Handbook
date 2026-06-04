# Augmentation PETs
A final strain of PETs touched upon in this playbook is called augmentation. Specifically, synthetic data will be addressed here. Synthetic data (SD) is a promising PET allowing maximum privacy while retaining the utility of the original data. SD does not contain any of the identifiable attributes of actual persons or events. The major advantage of SD is the flexibility of the artificially created data. It is especially popular in analysis of imaging data and enterprise scenarios where one needs a production pipeline where the predictive models need to be filled with adequate data. 

```{admonition} Implementations
:class: tip
Many open source libraries exist that allow the creation of SD, such as in [R](https://cran.r-project.org/web/packages/synthesis/synthesis.pdf) and [Python](https://pytorch.org/) Often, variational autoencoders (VAEs) or generative adversarial network (GANs) are used.
``` 

Any machine learning model can be trained using the SD, something lacking with MPC or FL. Additionally, one can openly share a synthetic dataset since it contains no actual personal information. A drawback however is the inability of SD to handle messy, multimodal and multisource data [^footnote1]. Another serious drawback is the lack of ‘wild occurrences’ in the SD once present in the actual data. SD tends to ‘smooth out’ outliers and rare occurrences, which might remove those cases that are of interest (rare diseases, financial extremities). 

For a health data ecosystem, synthetic data can prove useful to prototype machine learning applications. However, to obtain meaningful insight for a given individual case, extreme values tend to be smoothened out. Moreover, statistics demonstrating quality of the SD might prove insufficient for individual cases in a dataset. Additionally, more development is needed to smoothly combine datasets from different actors without sharing the data whilst maintaining high data quality.  

[^footnote1]:Jordan, S., Fontaine, C., & Hendricks-Sturrup, R. (2022). Selecting Privacy-Enhancing Technologies for Managing Health Data Use. Frontiers in Public Health, 10.
