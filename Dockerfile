FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /Wan-peng
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Wan-peng
WORKDIR /Wan-peng
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
