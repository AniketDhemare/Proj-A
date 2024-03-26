FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    TZ="America/New_York" 

RUN apt-get update && apt-get install -y git awscli

WORKDIR /app

#RUN git clone https://github.com/AniketDhemare/Proj-A 
COPY /front-end/. .

COPY s3-update.sh /script/s3-updated.sh

RUN chmod +x /script/s3-updated.sh

ENTRYPOINT ["/script/s3-updated.sh"]
