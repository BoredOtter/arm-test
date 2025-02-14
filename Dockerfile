FROM python:3.12

WORKDIR /app

COPY spacy.txt /constraint/spacy.txt

ENV PIP_CONSTRAINT=/constraint/spacy.txt

RUN python3.12 -m pip install spacy==3.8.3

CMD ["python3.12"]
