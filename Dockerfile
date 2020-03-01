FROM python:3.7-alpine
MAINTAINER Al Ardosa.

ENV PYTHONUNBUFFERED 1
ENV USERID=$USERID
ENV GID=$GID

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

