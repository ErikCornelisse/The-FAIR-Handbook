# The Concept of Data Ecosystems

</br>

## From Isolated Silos to Collaborative Networks

The first step in any health data sharing initiative is to understand *why* collaboration is needed and *what* form that collaboration can take. Health data is distributed across many independent actors — hospitals, laboratories, wearable manufacturers, insurance providers — each holding valuable but incomplete pieces of the picture. Individually, these data silos limit the potential for research, innovation and improved patient care. Together, they can form a **health data ecosystem**.

A health data ecosystem is a network of organisations that agree to share data or insights under clearly defined rules. Unlike a centralised data warehouse, an ecosystem preserves **data sovereignty**: each participant retains control over their own data and decides what to share, with whom, and under which conditions.

<p align = "center">
<img src="./_static/img/datastrategies.png" height="299" />
</br>
<small>TNO, EFRO.</small>
</p>

## Three Data Sharing Approaches

There is no single way to build such an ecosystem. Depending on legal constraints, technical capabilities and the sensitivity of the data involved, three fundamental sharing approaches exist — based on the paper [Bringing Code to Data](https://pubmed.ncbi.nlm.nih.gov/32540846/):

| Approach | Description | Privacy / Complexity |
|---|---|---|
| **Copy and Download** | Data is moved to the requester | Low complexity, higher privacy risk |
| **Researcher to Data** | The researcher works within the data holder's environment | Medium complexity, improved control |
| **Model to Data** | Only algorithms travel, raw data never leaves the source | High complexity, maximum data sovereignty |

These three approaches represent increasing levels of security, reliability, and privacy — but also increasing complexity to implement. Depending on the specific needs of your ecosystem, a balance can be struck between implementation feasibility and requirements for security, privacy and reliability.

:::{seealso}
For more background information on data sharing, we recommend reading the article [the key to further digitisation](https://www.tno.nl/en/focus-areas/information-communication-technology/roadmaps/data-sharing/) presented by TNO.
:::

## Design Decisions in Phase 1

In this **Explore** phase, the primary goal is to understand your context well enough to make high-level design decisions:

* **Why** is data sharing necessary? What value does the ecosystem create?
* **Who** are the stakeholders? What are their roles and incentives?
* **What** data is involved, at what level of sensitivity?
* **Which sharing approach** best fits your legal and technical constraints?

The answers to these questions set the foundation for governance, contracts and technical integration in the phases that follow.
