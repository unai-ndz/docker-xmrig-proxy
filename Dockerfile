FROM ubuntu:xenial

RUN apt-get update && apt-get install -y curl

ADD get-latest-version.sh .
RUN bash get-latest-version.sh

ENTRYPOINT ["./xmrig-proxy"]
