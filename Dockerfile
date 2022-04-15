FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update

RUN pip install pipenv

COPY Pipfile* ./

RUN pipenv install

COPY . /app

EXPOSE 8000