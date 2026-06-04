# Roles & Stakeholders

</br>

A health data ecosystem only works when all participating parties understand their own role and the role of others. To ensure alignment with the **Health-RI** national framework and the **European Health Data Space (EHDS)** regulations, this playbook recognises the following key stakeholder roles. These roles are designed to separate the *holding* of data from its *usage* and *mediation*, ensuring a clear chain of accountability.

## Core Stakeholder Roles

### Data Holder

Any public or private entity — such as a hospital, laboratory, or insurance provider — that is legally responsible for the collection and storage of personal electronic health data. In the EHDS framework, Data Holders are obligated to make this data available for authorised secondary use, under appropriate conditions.

### Trusted Health Data Holder (THDH)

A specific designation within the Health-RI / Dutch context referring to organisations — often large academic medical centres or regional hubs — that have met rigorous security and quality standards. They act as vetted nodes that can securely aggregate or prepare data for the broader network.

### Data User

A natural or legal person — such as a university researcher, pharmaceutical company, or public health policymaker — who has been granted a permit to access health data for specific purposes. Under the EHDS, Data Users only access data within a **Secure Processing Environment (SPE)** and cannot download raw patient records.

### End User

The ultimate beneficiary of the data-sharing process. This often refers to the **patient** (who receives better care or more personalised medicine) or the **clinician** (who uses shared data to make informed diagnostic decisions). In primary use cases, the end user and the data user may overlap.

### Health Data Access Body (HDAB)

A mandatory national authority established by the EHDS. This gatekeeper is responsible for reviewing data access applications, issuing permits, and ensuring that the Data User complies with all ethical and legal requirements before and during data access.

### Service Provider

Technical intermediaries that provide the infrastructure for the data space. This includes:

* **Identity Providers** — managing secure authentication and authorisation
* **Vocabulary Providers** — standardising clinical terminology across systems
* **SPE Operators** — running the Secure Processing Environments where analysis occurs

---

## RACI Overview

The table below summarises accountability using a **RACI** model — identifying who is **R**esponsible for the work, **A**ccountable for the outcome, **C**onsulted for expertise, and **I**nformed of progress.

| Stakeholder | Role in the Ecosystem | RACI |
|---|---|---|
| **Data Holder** | Source of truth for patient data | **A** — Legally responsible for data at rest |
| **THDH** | Vetted aggregator / preparation node | **A** — Responsible for data quality and security standards |
| **HDAB** | The Gatekeeper | **A** — Legally responsible for access permits |
| **Data User** | The Researcher / Analyst | **R** — Responsible for ethical and compliant analysis |
| **Service Provider** | The Facilitator | **R** — Responsible for technical uptime and security |
| **End User** | Beneficiary of insights | **I** — Informed of outcomes and data usage policies |

---

## Identifying Your Role

Before proceeding to the Govern phase, each participating organisation should identify which role(s) they occupy in the ecosystem. An organisation may fulfil more than one role — for example, a hospital may be both a **Data Holder** and a **Data User** in a research collaboration.

:::{note}
Role identification is not just organisational housekeeping. It determines which legal obligations apply, which governance decisions you are accountable for, and which technical interfaces you need to implement.
:::
