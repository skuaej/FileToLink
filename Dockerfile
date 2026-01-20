# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10-slim-bookworm

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip && pip install --no-cache-dir -r /requirements.txt

RUN mkdir /FileToLink
WORKDIR /FileToLink

COPY . /FileToLink

CMD ["python", "bot.py"]
