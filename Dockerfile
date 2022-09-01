# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /sitec2022
COPY requirements.txt /sitec2022/
RUN pip install -r requirements.txt
COPY . /sitec2022/