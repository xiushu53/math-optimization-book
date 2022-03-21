FROM python:3.8.11-slim-buster

WORKDIR /usr/src/app
ENV FLASK_APP=app

COPY ./app/app.py ./
COPY ./app/requirements.txt ./

RUN apt-get update && apt-get install -y curl
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
ENV FLASK_ENV=development
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8088
CMD ["flask", "run"]