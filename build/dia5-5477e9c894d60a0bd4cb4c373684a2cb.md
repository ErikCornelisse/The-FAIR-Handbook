# Data Sharing Architecture

</br>

<p align = "center">
<a href="./_static/img/techdatasharing.png">
<img src="./_static/img/techdatasharing.png" width="740" />
</br>
 <small>Click the diagram to see the full size diagram.</small>
</a>
</p>

</br>

The **Data Sharing Architecture** diagram describes the technical level of the querying mechanism of FAIR data from a FDP within an organisation. Any data request always starts with verifying the query format and the credentials of the party requesting the data, which can be seen to the left of the diagram. A wrong query format returns a syntax error, and any query without valid credentials results in a rejection.

Then we evaluate the query according to the following steps:
* Query Audit
  * The query is audited to ensure that no query is entertained which may expose sensitive or confidential data. Automated methods include:
    *  Pre-Approved Query Catalog: a list of queries that have been validated in advance.
    *  Automated Risk Assessment: an automated audit to estimate the risk-factor of a query.
    *  Semantic Verification: an analysis of the meaning of queried components to determine privacy or confidentiality risk.
  * Any query that doesn't pass audit or is too high risk will be flagged for manual review by a human auditor.

* Query Classification
  * The query is classified towards a certain type, and based on the type a-priori or post-hoc Privacy Enhanching Techniques (PETs) are applied.

* Local Processing
  * The query is followed through and the required data is processed internally. 
    * Any technique that builds a model or evaluates a hypothesis requires a-priori anonimisation.
    * Techniques that aggregate or select subsets require additional post-hoc anonimisation.

* Privacy Assessment
  * The resulting data, model or response is parsed through a final check with a privacy assessment. Methods include:
    * Risk Model Assesment: an agent determines whether a model or a response may have encoded privacy-sensitive or confidential information.
    * Cross-Query Assessment: previous queries by the user or group are aggregated to determine potential cross-query risks.
    * Keyword Matching: resulting data is compared to an internal list of privacy-sensitive terms (i.e. names, addresses, DoB, IDs, internal terms, etc.) to verify no sensitive data is contained within a response.
  * A failed privacy assessment is flagged for manual review by a human auditor.
  
* Complete Query
  * The entire lineage of the request is logged for provenance and support for further auditing or assessment.
  * The query is sent over a secure channel to the requesting user or group.
