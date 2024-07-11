FROM python:3

RUN pip install --no-cache-dir --upgrade pip

RUN  apt-get update && apt-get install -y \
    git

RUN pip install --upgrade pip setuptools wheel PyYAML==5.4.1


COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh  /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
