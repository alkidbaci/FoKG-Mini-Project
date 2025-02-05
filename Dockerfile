# Importing Base image
FROM python:latest

# Requirements
RUN pip install ontolearn==0.0.2
RUN pip install rdflib==6.1.1
RUN pip install pandas==1.3.4
RUN pip install owlready2==0.38

# Copying the code and training data
COPY main.py /
COPY data/kg22-carcinogenesis_lps1-train.ttl / data/
COPY data/kg22-carcinogenesis_lps2-test.ttl / data/
COPY data/carcinogenesis.owl / data/

# Running
CMD [ "python", "./main.py" ]
