FROM python:3.7-alpine
MAINTAINER Al Ardosa.

ENV PYTHONUNBUFFERED 1
ENV USERID=1
ENV GID=2

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

