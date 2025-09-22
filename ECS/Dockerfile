FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y libcurl4 openssl libxml2 && \
    apt-get clean

WORKDIR /app
COPY ./ecsdelphi /app/ecsdelphi

EXPOSE 9010

ENTRYPOINT ["./ecsdelphi"]