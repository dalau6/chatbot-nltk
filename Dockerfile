# Pull base image
FROM python:rc-alpine

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ADD . /app

# Set work directory
WORKDIR /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt