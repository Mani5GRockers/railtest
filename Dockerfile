FROM anasty17/mltb:latest

WORKDIR /usr/src/8438828237238723gwdghwgdywegywye/8438828237238723gwdghwgdywegywye
RUN chmod 777 /usr/src/8438828237238723gwdghwgdywegywye/8438828237238723gwdghwgdywegywye

RUN apt install mediainfo -y


COPY . .

RUN chmod 777 ./slambot.sh
CMD ["bash", "slambot.sh"]
