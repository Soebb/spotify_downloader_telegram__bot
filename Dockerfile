FROM python:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg
RUN python -m pip install --upgrade pip
RUN python -m pip install spotipy youtube_dl youtube_search telepot


RUN wget -q https://github.com/Soebb/spotify_downloader_telegram__bot/archive/main.tar.gz && \
    tar xf main.tar.gz && rm main.tar.gz

WORKDIR /spotify_downloader_telegram__bot-main
CMD python3 main.py
