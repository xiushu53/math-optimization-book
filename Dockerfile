FROM python:3.8.11-slim-buster

WORKDIR /usr/src/app
ENV FLASK_APP=app

COPY ./app/index.py ./
COPY ./app/requirements.txt ./

RUN apt-get update && apt-get install -y curl
RUN pip install --upgrade pip
RUN pip install -r requirements.txt