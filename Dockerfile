FROM python:3.12

RUN python3.12 -m pip install --upgrade pip==25.0.1

WORKDIR /app

COPY spacy.txt /constraint/spacy.txt

ENV PIP_CONSTRAINT=/constraint/spacy.txt

RUN python3.12 -m pip install spacy

CMD ["python3.12"]
