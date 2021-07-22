FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/Soebb/spotify_downloader_telegram__bot.git
RUN cd spotify_downloader_telegram__bot
WORKDIR /spotify_downloader_telegram__bot
RUN pip3 install -U -r requirements.txt
CMD python3 main.py
