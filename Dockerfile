# Use arm64 Python base image
FROM python:3.12

# Set working directory
WORKDIR /app

# Copy constraint file from host
COPY spacy.txt /constraint/spacy.txt

# Set environment variable for pip constraints
ENV PIP_CONSTRAINT=/constraint/spacy.txt

# Install spacy
RUN python3.12 -m pip install spacy==3.8.2

# Default command (optional)
CMD ["python3.12"]
