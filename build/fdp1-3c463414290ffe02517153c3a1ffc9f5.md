# FAIR Data Points

</br>

The FAIR Data Point (sometimes abbreviated to FDP) is the cumulation of the vision of Tim Berners-Lee, the inventor of the world-wide-web, and the vision of the authors of the  [original paper on FAIR](https://doi.org/10.1038/sdata.2016.18) . This describes an atomic unit, much like a server that exists on the web, which has an additional semantic layer that allows it to present and process data in a machine actionable and ultimately FAIR way.

<p align = "center">
<img src="./_static/img/fdparchitecture.jpg" height="308" />
</br>
<small>Databricks.</small>
</p>

A FAIR Data Point ultimately stores *information about data sets*, which is the definition of *metadata*. And just like the *webserver* in the WWW in the beginning of the 1990s brought the power of publishing text to anyone, a FAIR data point aims to give anyone the power of putting their own data on the web. 

The system is called a **FAIR** data point because it takes care of a lot of the issues that need to be taken care of to make data FAIR; especially with the metadata needed for **F**indability and **R**eusability, and a uniform open way of **A**ccessing the data. The FAIR data point also addresses the **I**nteroperability of the metadata it stores, but it leaves the Interoperability aspects for the data itself to the data provider. 

<p align = "center">
<img src="./_static/img/fairworkflow.png" height="190" />
</br>
<small>M-Unlock.</small>
</p>

FAIR data points allows the creation of FAIR resources, typically in RDF format that can be easily indexed, processed and read by machines throughout the web. These resources provide details on the type and format of data stored within a FDP, but does not provide access to the actual data. The access and control is entirely determined by the data controller.

</br>

:::{seealso}

For a concrete example of a FAIR data point, see the [Diamonds³ FDP](https://diamonds.tno.nl/fairdatapoint) hosted by TNO.

:::

