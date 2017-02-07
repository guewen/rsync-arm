FROM resin/rpi-raspbian
MAINTAINER bfosberry

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    rsync

RUN mkdir -p /data
RUN chmod a+rw /data

EXPOSE 873
ADD ./run /usr/local/bin/run

ENTRYPOINT ["/usr/local/bin/run"]
