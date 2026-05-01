# Metadata Standards

</br>

Most metadata in datasets are added using ontologies. **Ontologies** contain formal specifications of terms and relationships between them. You can think of them as dictionaries, where every word in the dictionary (a concept) has a unique identifier (concept ID) and is described by other words from that dictionary (definitions and relationships). 

Since all concepts in the ontology are unique and defined by their relations with other concepts, they give a good explanation of what the concept means and how it is related to other concepts. There are many different ontologies being created for different types of data. The most relevant and widely used ontologies in the medical domain are SNOMED and FHIR, which we describe below, but many more exist. The type of ontology to apply depends on the specific use-case. 

</br>

SNOMED CT: 

- Is the most comprehensive, multilingual clinical healthcare terminology in the world 
- Is a resource with comprehensive, scientifically validated clinical content 
- Enables consistent representation of clinical content in electronic health records (EHR) 
- Is mapped to other international standards 

- Is in use in more than eighty countries. 

</br>

SNOMED CT supports the development of comprehensive high-quality clinical content in electronic health records. It provides a **standardized** way to represent clinical phrases captured by the clinician and enables automatic interpretation of these phrases.

</br>

Fast Healthcare Interoperability Resources (FHIR, pronounced "fire") is a standard describing data formats and elements (known as "resources") and an application programming interface (API) for **exchanging** electronic health records (EHR). It defines how healthcare information can be exchanged between different computer systems regardless of how it is stored in those systems, and is seen as complimentary to SNOWMED. 

:::{seealso}

A more eloborated introduction for implementation of meta data might be found in the [FAIR cookbook of Elixer](https://faircookbook.elixir-europe.org/content/recipes/introduction/metadata-fair.html)  
:::
