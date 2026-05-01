# Data Minimalization 

Data minimalization is aimed at minimizing or obscuring the data to mitigate the risk of reidentifying someone on a personal level in a given dataset. Traditionally this was done by removal of data expected to reveal a subject’s identity. For example, by removing names, addresses or other attributes that could be used to retrace ones identity, privacy was thought to be safeguarded. The problem with large sets of data that it is not sufficient to merely remove the obvious personal data. Research has demonstrated that one can often find unique combinations of attributes that can reidentify individuals making up the data. Therefore, more recent developments in data minimalization have been aimed at removing the link between an individual’s identity and their record in the data by first finding these unique combinations of attributes and then blurring or destroying them. 
A subtype of minimalization is pseudo-anonymization. Pseudonymization is defined within the GDPR as “the processing of personal data in such a way that the data can no longer be attributed to a specific data subject without the use of additional information, as long as such additional information is kept separately and subject to technical and organizational measures to ensure non-attribution to an identified or identifiable individual”. 

In a data ecosystem, the first step then would be to predict those combinations of attributes after which one removes or suppresses these from the data. After this is done, one can share the data safely with other members of the ecosystem. Methods of determining if one obtained privacy in a given datasets can be found using measures such as k-anonymity, l-diversity and t-closeness[^footnote2]. 

```{admonition} K-anonymity
:class: tip
K-anonymity gained large scale media attention when in 2018 it was used by Junade Ali to [create a protocol](https://arstechnica.com/information-technology/2018/02/new-tool-safely-checks-your-passwords-against-a-half-billion-pwned-passwords) based on hashing used to anonymously verify if a password was leaked in any large scale database breaches.
```
The challenge with these techniques lies in data with many features or a high dimensionality, which will be often the case in a health data ecosystem. It is impossible to anticipate which combination of attributes might be used to reidentify subjects since the myriad of combinations cannot be known before seeing the other datasets in the ecosystem. One needs to predict accurately what combinations might be used, thus leaving potential residual privacy risks given the impossibility to do so. Or one has to preemptively redacts large amounts of attributes significantly reducing the utility of data. Both options lead to undesirable outcomes. 

A final problem with data minimalization methods is that for a functioning data ecosystem, one often needs to be able to link a given individual over several datasets to obtain data of high utility. Machine learning models typically need large amounts of data to achieve high accuracy. Additionally, removing personal data for anonymization is irreversible. Once the sensitive data has been removed, it cannot be restored. By destroying or obfuscating such data to maintain privacy, one quickly loses this ability to link different data across the ecosystem for a given person, undermining one of the key benefits of an ecosystem. 

```{admonition} Implementations
:class: tip
Implementations of k-anonymity are provided by commercial parties such as [Google](https://cloud.google.com/dlp/docs/compute-k-anonymity) and [Privitar](https://www.privitar.com/) among others.
Open source alternatives are available in [Python](https://github.com/topics/k-anonymity) and R, such as [SDC micro](https://www.rdocumentation.org/packages/sdcMicro/versions/5.6.1/topics/localSuppression).
```
[^footnote2]:The Cyber Security Body of Knowledge, chapter: “Privacy & Online Rights” (2019). 
