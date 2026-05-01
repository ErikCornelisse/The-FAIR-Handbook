# Data Sharing Agreements

</br>

A **Data Sharing Agreement (DSA)** is the formal legal instrument that governs the relationship between parties in a health data ecosystem. It translates the principles established in the Govern phase and the regulatory requirements of the Contract phase into binding obligations. Without a well-drafted DSA, no data should flow between parties.

## Why a DSA is Essential

A DSA provides legal certainty for all parties by answering the following questions:

* **Who** is allowed to access what data?
* **For what purpose** can the data be used?
* **Under what conditions** can data be processed, stored and shared further?
* **What happens** in case of a breach, dispute, or project termination?
* **Who owns** the derived insights, models and publications?

## Core Components of a Health Data Sharing Agreement

### 1. Parties and Roles

Identify all parties to the agreement and their roles in the ecosystem (Data Holder, THDH, Data User, Service Provider). Each party's responsibilities and rights must be explicitly stated.

### 2. Data Description

Specify precisely which datasets or data categories are covered:

* Type of data (clinical records, imaging, genomics, wearable data)
* Format and standard (FHIR, HL7, OMOP CDM)
* Scope (time period, patient population, geographic coverage)
* Level of identifiability (pseudonymised, anonymised, aggregated)

### 3. Purpose Limitation

Define the permitted use of the data. Health data may only be used for the specific purpose stated in the agreement and in the HDAB permit. Any secondary or derived use requires a new agreement or amendment.

### 4. Legal Basis and Regulatory Compliance

State the legal basis under which processing occurs, including:

* GDPR Article 6 (lawfulness) and Article 9 (special categories of data)
* Applicable national health data legislation (WGBO, WMO, Wabvpz)
* EHDS permit reference (if applicable)
* Ethical committee approval (if applicable under WMO)

### 5. Technical and Security Requirements

Specify the technical safeguards that must be in place, including:

* Use of a Secure Processing Environment
* Encryption standards for data in transit and at rest
* Access control and authentication requirements
* Audit logging and monitoring obligations

### 6. Data Retention and Deletion

Define how long data may be retained, where it may be stored (jurisdiction), and how it must be deleted at the end of the agreement or project.

### 7. Intellectual Property and Publication Rights

Address ownership of:

* Derived datasets and data products
* Trained machine learning models
* Research publications and reports

Specify whether and how parties may publish results, and whether results must be reviewed before release.

### 8. Incident Response and Breach Notification

Define the process for responding to security incidents or personal data breaches, including:

* Notification timelines (GDPR requires notification within 72 hours)
* Responsible parties for breach response
* Obligations towards data subjects and supervisory authorities

### 9. Liability and Indemnification

Allocate liability between parties for damages arising from misuse of data, security failures, or non-compliance with the agreement.

### 10. Dispute Resolution and Governing Law

Specify the jurisdiction and mechanism for resolving disputes (mediation, arbitration, court).

---

## Consent Management

For data that requires patient consent as its legal basis, the DSA must include or reference a **consent management framework** that describes:

* How consent is obtained (explicit, opt-in / opt-out)
* How consent is recorded and stored
* How consent can be withdrawn, and what happens to already-processed data when it is
* How consent aligns with the scope of the HDAB permit

:::{note}
Under the EHDS secondary use framework, explicit patient consent may not always be required — but the HDAB permit takes its place as the legal authorisation. The DSA must reference whichever mechanism applies.
:::

---

## Relationship to Other Documents

A DSA does not stand alone. It should be consistent with and reference:

* The **HDAB Data Access Permit**
* The ecosystem's **Governance Framework** (Phase 2)
* The **Information Security Policy** of all parties
* Any relevant **ethical committee approvals**

:::{seealso}
For guidance on the legal landscape in which the DSA operates, see the Legislation sections of this playbook — in particular the GDPR basics, WGBO, WMO, and EHDS chapters.
:::
