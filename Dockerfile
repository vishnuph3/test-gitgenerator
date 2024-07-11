FROM ubuntu:latest


RUN  apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

FROM python:3

RUN python -m pip install --upgrade pip

RUN pip3 install PyYAML==5.4.1

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh  /entrypoint.sh

RUN apt-get clean

ENTRYPOINT ["/entrypoint.sh"]
