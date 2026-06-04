# EHDS Compliance — European Health Data Space

</br>

The **European Health Data Space (EHDS)** is a landmark EU regulation that creates a common framework for the access and reuse of electronic health data across EU Member States. For any organisation participating in a health data ecosystem, aligning with the EHDS is not optional — it is a regulatory requirement and a prerequisite for cross-border data flows.

:::{seealso}
Official EHDS documentation: [European Health Data Space](https://health.ec.europa.eu/ehealth-digital-health-and-care/european-health-data-space_en)
:::

## Primary vs Secondary Use

The EHDS distinguishes between two categories of health data use:

| Use type | Description | Examples |
|---|---|---|
| **Primary use** | Use of data for direct patient care | A clinician accessing a patient's records during treatment |
| **Secondary use** | Re-use of health data for research, policy, or innovation | A researcher accessing anonymised records from multiple hospitals |

This playbook focuses primarily on **secondary use**, which is subject to additional authorisation requirements and is governed by the HDAB permit process.

## Key EHDS Requirements for Ecosystem Participants

### 1. Data Holders must make data available

Organisations that hold electronic health data are legally obligated under the EHDS to make that data available for authorised secondary use. This applies to hospitals, insurance providers, laboratories, and health app operators. Data Holders must:

* Catalogue their datasets using FAIR-compliant metadata
* Provide access through standardised interfaces
* Cooperate with the national **Health Data Access Body (HDAB)**

### 2. Data Users must obtain a permit

Before accessing health data for secondary use, Data Users must submit an application to the HDAB of the relevant Member State. The application must specify:

* The purpose of the data access (research question, clinical objective, policy analysis)
* The categories of data requested
* The technical environment in which data will be processed (Secure Processing Environment)
* Safeguards for privacy and security

The HDAB reviews applications against ethical, legal, and technical criteria before issuing a **Data Access Permit**.

### 3. Processing must occur in Secure Processing Environments

Under the EHDS, Data Users may not download or transfer raw patient records. Analysis must be performed within a **Secure Processing Environment (SPE)** — a controlled technical infrastructure where:

* The Data User can run analyses but cannot export raw data
* All access and actions are logged and auditable
* The HDAB can verify compliance

### 4. Outputs must be non-disclosive

Results derived from health data — statistical outputs, machine learning models, visualisations — must be reviewed before release to ensure they do not enable re-identification of individuals.

---

## EHDS and the Phased Journey

The EHDS intersects with multiple phases of this playbook:

| Phase | EHDS Relevance |
|---|---|
| **Phase 1 — Explore** | Identify whether your use case qualifies as primary or secondary use |
| **Phase 2 — Govern** | Align FAIR data principles with EHDS metadata and discoverability requirements |
| **Phase 3 — Contract** | Obtain HDAB permits; include EHDS compliance clauses in Data Sharing Agreements |
| **Phase 4 — Integration** | Deploy or connect to an EHDS-compliant Secure Processing Environment |
| **Phase 5 — Operation** | Maintain compliance over time; respond to audits and permit renewals |

---

## National Implementation

The EHDS is implemented nationally through designated **Health Data Access Bodies**. In the Netherlands, this role is aligned with the **Health-RI** infrastructure. Organisations operating in the Dutch context should:

* Register with Health-RI as a Data Holder or Data User
* Follow the Health-RI data catalogue and metadata standards
* Use Health-RI-approved Secure Processing Environments where available

:::{note}
EHDS implementation timelines vary by Member State. Check with your national HDAB for the current status of regulatory implementation in your country.
:::
