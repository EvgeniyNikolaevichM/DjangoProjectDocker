FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt
COPY djangoProject /djangoProject
WORKDIR /djangoProject
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password djangoProject-user

USER djangoProject-user