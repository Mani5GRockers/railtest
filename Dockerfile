FROM anasty17/mltb:latest

WORKDIR /usr/src/8438828237238723gwdghwgdywegywye/8438828237238723gwdghwgdywegywye
RUN chmod 777 /usr/src/8438828237238723gwdghwgdywegywye/8438828237238723gwdghwgdywegywye

RUN apt install mediainfo -y

RUN pip install aria2p

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod 777 ./slambot.sh
CMD ["bash", "slambot.sh"]
