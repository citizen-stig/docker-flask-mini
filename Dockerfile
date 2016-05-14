FROM ubuntu:14.04
MAINTAINER Nikolay Golub <nikolay.v.golub@gmail.com>

RUN apt-get update && \
    apt-get install -y python3 python3-pip supervisor nginx && \
    pip3 install -r requirements.txt && \
    apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/

EXPOSE 80

CMD ["/bin/true"]
