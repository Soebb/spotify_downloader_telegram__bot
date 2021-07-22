FROM python:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg
RUN python pip install --upgrade pip
RUN python pip install
RUN python pip install youtube-dl youtube_search requests ffmpeg-python

RUN wget -q https://github.com/Soebb/spotify_downloader_telegram__bot/archive/master.tar.gz && tar xf master.tar.gz && rm master.tar.gz

WORKDIR /spotify_downloader_telegram__bot-master
CMD python3 main.py
