FROM ubuntu:trusty
MAINTAINER Tutum <info@tutum.co>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -yq install python python-dev python-pip libyaml-dev && \
  rm -rf /var/lib/apt/lists/*
ADD . /app
RUN pip install /app

ENTRYPOINT ["tutum"]
CMD ["-h"]