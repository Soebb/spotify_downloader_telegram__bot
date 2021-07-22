FROM python:latest

ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg
RUN python -m pip install --upgrade pip
RUN python -m pip install eyeD3 lyricsgenius spotipy ffmpeg-python
RUN python -m pip install youtube_dl youtube_search requests telepot

RUN wget -q https://github.com/Soebb/spotify_downloader_telegram__bot/archive/master.tar.gz && tar xf master.tar.gz && rm master.tar.gz

WORKDIR /spotify_downloader_telegram__bot-master
CMD python3 main.py
