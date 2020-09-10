FROM python:3.8.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /docker_api
WORKDIR /docker_api
COPY . /docker_api/
RUN pip install -r requirements.txt