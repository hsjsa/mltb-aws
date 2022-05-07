FROM anasty17/mltb:latest
# FROM anasty17/mltb-oracle:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt update
RUN apt upgrade -y

RUN apt install wget curl -y
RUN git clone https://github.com/hsjsa/mltb-aws
COPY mltb-aws/* .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
