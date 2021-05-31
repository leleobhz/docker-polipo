FROM ubuntu:bionic
LABEL maintainer="Leonardo Amaral"
LABEL creator="Christian Lück <christian@lueck.tv>"
LABEL original-repo="https://github.com/clue/docker-polipo"

RUN apt update && apt install -y curl polipo
RUN echo "proxyAddress = 0.0.0.0" > /etc/polipo/config \
    && echo "daemonise = false" >> /etc/polipo/config

EXPOSE 8123
ENTRYPOINT ["polipo"]
CMD []
