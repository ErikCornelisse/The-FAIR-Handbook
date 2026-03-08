# Data Integration Architecture

</br>

<p align = "center">
<a href="./_static/img/techdataintegration.png">
<img src="./_static/img/techdataintegration.png" width="740" />
</br>
 <small>Click the diagram to see the full size diagram.</small>
</a>
</p>

</br>

The **Data Integration Architecture** diagram describes the technical level of the intake of FAIR data within an organisation. Any data ingestion request always starts with verifying the credentials of the party submitting the data, which can be seen to the left of the diagram. Then, we verify whether these data are an existing set of data, or are a new data point entered into the system.

Then we split the workflow into two branches:
* Existing Data Set
  * We verify whether the data already adheres to FAIR standards
   * If not, the data needs to go through a FAIRification process
  * We verify whether the data meets any known ontology
   * If not, the data has to be mapped or integrated with an existing ontology
  * Finally, the data can be integrated with the FAIR Data Point (FDP) as a FAIR Data Resource (FDR)   

* New Data Point
  * We verify if the new data point matches any given FAIR metadata template or if a template has been supplied.
   * If not, a new template has to be specified otherwise the data cannot be integrated.
  * We check whether the data point is compliant with internal and external policy
   * If not, compliance issues have to be resolved before data can be integrated.
  * Finally, the data can be integrated with the FAIR Data Point (FDP) as a FAIR Data Resource (FDR)  
