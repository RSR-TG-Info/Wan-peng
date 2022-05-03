FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /Wan-Peng
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Naveen-TG
WORKDIR /Naveen-TG
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
