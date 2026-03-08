# Matching Layers

</br>

Metadata should be matched internally with data which it represents. The idea of FAIR principles realization is that the external users can access only metadata layer, and cannot reach data which resides internally only. 

The request for data is typically made in terms of metadata, and that request should be translated internally by metadata layer to match schema of data. This matching happens internally, and user from outside doesn’t see the actual schema (if the actual schema is confidential). 

The relationship between metadata and data interfaces from the technical side is presented in the Figure below. 

<p align = "center">
<img src="./_static/img/datainterface.png" height="422" />
</br>
<small>TNO, EFRO.</small>
</p>

