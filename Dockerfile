FROM python:3.6-slim

WORKDIR /app
COPY ./requirements.txt /app

RUN pip3 install -r requirements.txt

RUN apt-get update
RUN apt-get -y install \
                    wget \
                    openssh-client \
                    libapt-pkg-dev       

ENV AWS_PROFILE="personal"

