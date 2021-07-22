FROM python:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg
RUN python -m pip install --upgrade pip
RUN python -m pip install eyeD3 lyricsgenius requests ffmpeg-python
RUN python -m pip install spotipy youtube_dl youtube_search telepot

RUN wget -q https://github.com/Soebb/spotify_downloader_telegram__bot/archive/master.tar.gz && \
    tar xf master.tar.gz && rm master.tar.gz

WORKDIR /spotify_downloader_telegram__bot-master
CMD python3 main.py
