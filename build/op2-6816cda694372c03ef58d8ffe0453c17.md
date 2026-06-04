# Data Quality Monitoring

</br>

The value of a health data ecosystem depends entirely on the quality of the data within it. A single low-quality data source can corrupt analyses, undermine clinical decisions, and erode trust across the entire network. **Data quality monitoring** is therefore not a one-time check at onboarding — it is a continuous operational process.

## Dimensions of Data Quality

Health data quality is typically assessed across the following dimensions:

| Dimension | Description | Example issue |
|---|---|---|
| **Completeness** | Are all expected data fields present? | Missing blood pressure readings for 30% of records |
| **Accuracy** | Does the data correctly represent reality? | Incorrect unit of measurement (mg vs. µg) |
| **Consistency** | Is the data consistent across sources and time? | Two hospitals using different SNOMED codes for the same condition |
| **Timeliness** | Is the data available when needed and up to date? | Lab results not updated for six months |
| **Validity** | Does the data conform to the agreed format and vocabulary? | A date field containing free text |
| **Uniqueness** | Are there unwanted duplicates? | The same patient record appearing twice after a system migration |

## Establishing a Data Quality Framework

Before monitoring can begin, the ecosystem must define what "good quality" means for each dataset. This is done through a **Data Quality Framework** that specifies:

* **Minimum quality thresholds** for each dimension and dataset
* **Quality metrics** — how each dimension is measured (automated checks, manual audits)
* **Roles and responsibilities** — who is accountable for quality at each Data Holder
* **Remediation processes** — what happens when a threshold is breached

## Automated Quality Checks

Where possible, data quality checks should be automated and run continuously or at regular intervals (e.g. nightly). Common automated checks include:

* Schema validation against the agreed data standard (FHIR, OMOP)
* Vocabulary validation against agreed code lists (SNOMED, LOINC, ICD-10)
* Referential integrity checks (e.g. every encounter linked to a valid patient)
* Statistical outlier detection (values outside clinically plausible ranges)
* Completeness rates per field and per time period

Results of automated checks should feed into a **Data Quality Dashboard** that is accessible to the ecosystem governance body and relevant Data Holders.

## Responding to Quality Issues

When a quality issue is detected, the response process should follow a clear protocol:

1. **Alert** the responsible party at the Data Holder
2. **Assess** the impact on ongoing data use (are active permits affected?)
3. **Quarantine** the affected data if necessary
4. **Remediate** the source issue (system bug, process failure, mapping error)
5. **Re-validate** the corrected data before resuming use
6. **Document** the incident in the quality log

## Sharing Quality Metrics Transparently

In a trustworthy ecosystem, data quality metrics should be shared with Data Users — not just with Data Holders. When a researcher is deciding whether to include a dataset in their analysis, they need to know its quality profile. This transparency:

* Supports informed research design
* Builds trust between Data Holders and Data Users
* Creates incentives for Data Holders to improve quality

:::{seealso}
FAIR metadata (see Phase 2 — Govern) provides the mechanism for publishing quality metrics alongside dataset descriptions in the data catalogue.
:::
