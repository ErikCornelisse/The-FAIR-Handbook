# Sustainability & Scaling

</br>

Getting a health data ecosystem running is an achievement — but keeping it running, growing, and delivering value over time is the real challenge. **Sustainability** ensures the ecosystem can operate independently of any single project, grant cycle, or champion. **Scaling** extends its value to more participants, more data types, and more use cases.

## From Pilot to Production

Many health data ecosystems begin as pilots or proof-of-concept projects. The transition to a sustainable production environment requires deliberate attention to:

| Dimension | Pilot | Production |
|---|---|---|
| **Funding** | Grant or project-funded | Structural funding model (membership fees, data access fees, public funding) |
| **Governance** | Informal, project team | Formal governance body with defined roles and decision rights |
| **Legal** | Temporary agreements | Long-term DSAs with renewal and amendment procedures |
| **Technical** | Prototype infrastructure | Hardened, monitored, SLA-backed infrastructure |
| **Participants** | Core founding group | Open (governed) onboarding process for new members |

## Governance Sustainability

A sustainable ecosystem requires a **governance body** with:

* Clear mandate and decision-making authority
* Representation from all key stakeholder categories
* Defined meeting cadence and escalation paths
* A transparent process for amending governance rules

Without structural governance, ecosystems tend to stagnate or fragment when founding members' priorities shift.

## Financial Sustainability

Ecosystems must eventually cover their operating costs. Common models include:

* **Membership fees** — participating organisations pay a recurring fee for access to the ecosystem's infrastructure and governance
* **Data access fees** — Data Users pay per data access request; revenue is distributed to Data Holders and infrastructure operators
* **Public funding** — National infrastructure bodies (such as Health-RI) provide structural funding for public-interest infrastructure
* **Value-based contributions** — participants contribute in-kind (engineering capacity, data, expertise) rather than cash

The choice of funding model must be reflected in the DSAs and governance framework.

## Scaling to New Participants

Adding new Data Holders and Data Users to an established ecosystem increases value for all — but uncontrolled growth introduces risk. A structured onboarding process (see Lifecycle Management, `op1.md`) ensures that new participants meet the required standards before they receive access.

Key scaling considerations:

* **Federation** — as the ecosystem grows, a single centralised infrastructure becomes a bottleneck and a single point of failure. Federated architectures distribute both data and infrastructure across participants.
* **Interoperability** — new participants may use different systems and standards. Clear semantic interoperability requirements (see Phase 4 — Integration) prevent data quality degradation at scale.
* **Trust** — trust cannot be assumed; it must be earned. New participants should enter with limited access and expand as they demonstrate compliance and reliability.

## Scaling to New Data Types and Use Cases

An ecosystem that was built for one use case will be approached for others. Before expanding scope:

* Assess whether the existing governance framework, legal agreements, and technical infrastructure cover the new use case
* If not, identify the gaps and address them before granting access
* Update the data catalogue and metadata descriptions to reflect new datasets
* Obtain any additional HDAB permits required for the new purpose

## Measuring Ecosystem Health

A sustainable ecosystem requires regular measurement of its own health. Key metrics include:

| Metric | What it measures |
|---|---|
| Number of active Data Holders | Coverage and diversity of data supply |
| Number of active Data Users and approved permits | Demand and utilisation |
| Data quality scores per dataset | Trust and reliability of the data supply |
| Number of completed research outputs | Value delivered |
| Time to onboard a new participant | Efficiency of governance processes |
| Number and severity of security incidents | Security posture |
| Participant satisfaction score | Long-term commitment and trust |

By tracking these metrics over time, the governance body can identify trends, address problems early, and make evidence-based decisions about the ecosystem's strategic direction.

:::{note}
Sharing ecosystem health metrics publicly — for example, in an annual transparency report — strengthens trust with both existing participants and potential new members.
:::
