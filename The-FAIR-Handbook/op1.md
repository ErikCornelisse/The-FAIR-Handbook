# Lifecycle Management

</br>

A health data ecosystem is not a project with a fixed end date — it is a **living system** that must be actively maintained, governed and evolved. Phase 5 (Operation) begins the moment the first data exchange goes live, and it continues for as long as the ecosystem exists.

## Treating the Playbook as a Dynamic Resource

This playbook itself is an example of lifecycle management in practice. It is a [dynamic resource that changes over time](https://github.com/ErikCornelisse/The-FAIR-Handbook) and is updated on a regular basis. All changes are publicly accessible through the [commit log](https://github.com/ErikCornelisse/The-FAIR-Handbook/commits/main), through which references can be made to specific versions.

The same principle applies to your ecosystem's governance documents, data catalogues, technical interfaces, and legal agreements: they must evolve as regulations change, new data sources are added, and the needs of participants shift.

## Key Lifecycle Management Activities

### Versioning Governance Documents

Every governance policy, data sharing agreement, and metadata standard in the ecosystem should be version-controlled. When a document changes:

* The previous version must remain accessible (for audit purposes)
* All affected parties must be notified and must confirm acceptance
* The effective date of the new version must be clearly recorded

### Onboarding and Offboarding Participants

As the ecosystem grows, new Data Holders, Data Users, and Service Providers will join. When participants leave, their data access must be revoked and any data they held on behalf of the ecosystem must be handled according to the data retention policies defined in the DSA.

**Onboarding checklist:**

* Technical connection verified and tested
* Data catalogue entry created and validated
* DSA signed and HDAB permit obtained (if applicable)
* Security assessment completed
* Staff trained on data handling policies

**Offboarding checklist:**

* Access credentials revoked
* Audit logs retained per retention policy
* Data deletion or transfer executed per DSA terms
* Final audit report produced

### Regulatory Change Management

Legislation in the health data space is evolving rapidly — the EHDS is being implemented incrementally, and national legislation is adapting. The ecosystem governance body is responsible for:

* Monitoring relevant regulatory developments
* Assessing the impact of changes on existing DSAs, technical interfaces, and governance policies
* Coordinating updates across all ecosystem participants

### Periodic Governance Reviews

At regular intervals (at minimum annually), the ecosystem governance body should conduct a review covering:

* Compliance with existing DSAs and HDAB permits
* Data quality metrics and incidents
* Security posture and vulnerability assessments
* Stakeholder satisfaction and participation levels
* Strategic priorities for the next period

:::{note}
The EHDS requires Data Holders to make their data catalogues and terms of access publicly discoverable. Keeping these up to date is both a legal obligation and a lifecycle management responsibility.
:::
