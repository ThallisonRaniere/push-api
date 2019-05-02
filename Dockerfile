FROM python:3.7-alpine
MAINTAINER Thallison Raniere

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN pip install -r /requirements.txt


VOLUME /app
EXPOSE 8000
RUN adduser -D raniere
USER raniere
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]