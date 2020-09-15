FROM python:3.8.5

WORKDIR /app

RUN apt update -y && apt install -y graphviz && pip install diagrams
