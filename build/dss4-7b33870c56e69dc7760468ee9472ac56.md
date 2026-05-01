# Model to Data

</br>

**Model to Data** is an approach where the data controller allows researchers to send algorithms or queries to the data source to collect an answer or a trained algorithm back. When properly implemented, this method guarantees that underlying is not exposed. This strategy is the most complex to implement, but enables privacy by design.

<p align = "center">
<img src="./_static/img/datastrategy3.png" height="500" />
</br>
<small>TNO, EFRO</small>
</p>

Using a decentralized approach towards privacy by design, every data owner retains control over their data. Data does not leave its premises, instead, queries are processed locally in a secure and auditable environment. Privacy Enhancing Techniques like differential privacy or federated learning are suitable for such a model-to-data approach. The concept of the [Personal Health Train](https://pht.health-ri.nl/pht-concept) (PHT) is an example of the model to data approach. 

Since the data user does not have direct access to the data, it is of great importance that data is standardised over the various data sources. For this purpose, FAIRification of data is important in order to make sure the decentralised data sources are interoperable. Model-to-data approaches also need strict governance agreements on which algorithms under which conditions can make use of the model-to-data infrastructure. 

Privacy by design implementations for sharing and distributed learning from data are not only gaining traction due to the development of sophisticated new methods, but by necessity and as a consequence of the new regulations on European and national level. Laws such as GDPR necessitate that organizations that store and process data, do everything they can within reason to protect their user’s private data, not to mention the minimization of financial, reputational and other risks that are associated with data breaches. 

Privacy-by-design implementations of data sharing aim to minimize these risks from a technical perspective, while still allowing for useful insights to be learned from this private data that will inevitably benefit both the data owner (privacy and more control over data) and data processor (controlled access to data while privacy is respected). 

 </br>

:::{seealso}

*Set of implementation agreements for the Personal Health Train (V0.5)*, pdf available on [PHT](https://pht.health-ri.nl/sites/healthtrain/files/2021-11/PHT%20Afsprakenset%200.5.pdf).

:::
