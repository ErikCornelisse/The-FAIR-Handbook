# Security Operations

</br>

Maintaining a secure health data ecosystem requires ongoing vigilance. Security is not a one-time implementation — it is a continuous operational discipline. This chapter describes the practices that keep the ecosystem secure in day-to-day operation.

## Security Posture Management

The ecosystem's collective security posture is the sum of the security measures implemented by all participants. The governance body and individual organisations must regularly assess and improve their posture across the following areas:

| Area | Key activities |
|---|---|
| **Identity & Access Management** | Regular review of who has access to what; removal of stale accounts |
| **Encryption** | Ensuring data in transit and at rest remains encrypted to current standards |
| **Network Security** | Monitoring traffic between ecosystem components; intrusion detection |
| **Vulnerability Management** | Regular patching of systems; penetration testing of critical interfaces |
| **Audit Logging** | Ensuring all data access events are logged and logs are protected from tampering |

## Incident Response

Despite the best preventive measures, security incidents can occur. Every participant in the ecosystem must have a tested **Incident Response Plan (IRP)** and the ecosystem governance body must coordinate a joint response process.

### Incident Classification

| Severity | Description | Examples |
|---|---|---|
| **Critical** | Confirmed breach of personal health data | Unauthorised export of patient records |
| **High** | Potential breach or significant service disruption | Ransomware detected; SPE unavailable |
| **Medium** | Policy violation or near-miss | Analyst attempted to export raw data; flagged by SPE |
| **Low** | Minor configuration issue with no data exposure | Audit log gap of <1 hour |

### Response Steps

1. **Detect** — Monitoring systems generate an alert, or a participant reports an incident
2. **Contain** — Immediately limit the blast radius (revoke access, isolate affected systems)
3. **Assess** — Determine the scope and severity of the incident
4. **Notify** — Inform affected parties, the HDAB, and if required, the Data Protection Authority (GDPR mandates notification within **72 hours** for personal data breaches)
5. **Remediate** — Fix the root cause; restore systems from verified backups
6. **Review** — Conduct a post-incident review; update policies and technical controls

## GDPR Breach Notification Obligations

Under the GDPR, any personal data breach that is likely to result in a risk to the rights and freedoms of natural persons must be notified to the relevant supervisory authority within **72 hours** of becoming aware of it. If the breach is likely to result in a **high risk**, affected data subjects must also be notified without undue delay.

In the context of health data, the threshold for notification is low — health data is a special category under GDPR Article 9, and any breach warrants immediate assessment.

## Security in the Secure Processing Environment

The **Secure Processing Environment (SPE)** is the central technical safeguard for secondary use of health data. Security operations must ensure that the SPE:

* Enforces output controls (preventing export of raw data or high-risk derived data)
* Maintains a complete and tamper-proof audit trail of all analytical operations
* Is tested regularly through penetration tests and red-team exercises
* Has defined and tested procedures for recovery from failure

## Staff Awareness and Training

A significant proportion of security incidents in healthcare involve human error or social engineering. All staff with access to ecosystem infrastructure or health data must receive:

* Annual security awareness training
* Role-specific training for administrators and data engineers
* Clear guidance on recognising and reporting phishing and social engineering attempts

:::{note}
Security incidents affecting health data may also trigger reporting obligations under sector-specific legislation such as the WEGIZ (Electronic Data Exchange in Healthcare Act). Check applicable requirements with your legal counsel.
:::
