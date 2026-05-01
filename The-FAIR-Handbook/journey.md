# The Data Journey

</br>

Before designing the technical or legal architecture of a health data ecosystem, it is essential to map the **data journey** — the generic flow that describes how health data travels from its source to a point of use, and what happens along the way.

Understanding this journey helps stakeholders identify:

* Where data is created, stored and controlled
* Where privacy risks arise
* Which actors need to be involved at each step
* Which technical and legal mechanisms are needed

## Generic Health Data Journey

The following describes a high-level, use-case-agnostic journey that applies to most health data sharing scenarios.

### Step 1 — Data Retrieval

Health data originates at a **Data Holder**: a hospital, laboratory, wearable platform, or general practice. At this stage the data is in its raw form, often in proprietary or siloed formats. Key considerations:

* What data is available?
* In which format and standard is it stored?
* What is the legal basis for making it available for secondary use?

### Step 2 — Data Preparation

Before data can be shared or analysed, it must be prepared: cleaned, validated, pseudonymised or anonymised, and mapped to common standards and vocabularies. This step is often performed by the Data Holder or a **Trusted Health Data Holder (THDH)**.

* Apply data quality checks
* Pseudonymise or anonymise where required
* Map to standard terminologies (e.g. SNOMED CT, LOINC, ICD-10)
* Attach FAIR-compliant metadata

### Step 3 — Controlled Access

Once prepared, data is made accessible to authorised Data Users through a controlled mechanism. This may take the form of a **Secure Processing Environment (SPE)**, a federated query interface, or a regulated data portal. Access is governed by:

* Permits issued by the **Health Data Access Body (HDAB)**
* Data Sharing Agreements between parties
* Technical access controls (authentication, audit logs)

### Step 4 — Analysis & Processing

The **Data User** performs analysis within the boundaries set by the access agreement. Depending on the sharing approach chosen in Phase 1, this may happen:

* At the Data User's own environment (Copy and Download)
* Within the Data Holder's infrastructure (Researcher to Data)
* Via algorithms sent to the data (Model to Data / Federated Learning)

Results and derived insights are captured, but raw patient records are never extracted unless explicitly permitted.

### Step 5 — Output & Dissemination

The outputs of the analysis — statistical results, trained models, aggregated insights — are reviewed, quality-checked and shared with the intended beneficiaries (publications, clinical teams, policymakers). Outputs must comply with:

* Non-disclosure of individual-level data
* Intellectual property agreements
* Reporting obligations to the HDAB

### Step 6 — Audit & Lifecycle Management

Every step of the journey is logged and auditable. The ecosystem's governance body reviews usage against the agreed terms. Over time, data quality is monitored, agreements are updated, and the ecosystem evolves — see **Phase 5: Operation**.

---

## Journey Diagram

```
[Data Holder]
     │
     ▼  Step 1: Retrieval
[Raw Health Data]
     │
     ▼  Step 2: Preparation (THDH / Data Holder)
[Pseudonymised + FAIR-compliant Data]
     │
     ▼  Step 3: Controlled Access (HDAB permit + DSA)
[Secure Processing Environment]
     │
     ▼  Step 4: Analysis (Data User)
[Derived Insights / Trained Model]
     │
     ▼  Step 5: Output & Dissemination
[Publications / Clinical Decisions / Policy]
     │
     ▼  Step 6: Audit & Lifecycle
[Governance Review + Ecosystem Update]
```

---

## From Journey to Design

The data journey is not just descriptive — it is a design tool. By walking through each step for your specific use case, you can identify gaps in governance, legal coverage, or technical capability before committing to implementation. Use this journey map as input for:

* **Phase 2 (Govern)** — which FAIR principles and governance policies apply at each step
* **Phase 3 (Contract)** — which legal instruments are needed for each transition
* **Phase 4 (Integration)** — which technical components are required at each step
