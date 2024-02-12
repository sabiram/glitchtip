FROM glitchtip/glitchtip:latest

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && mkdir -p /var/lib/apt/lists/partial \
    && rm -rf /var/lib/apt/lists/*

COPY ./start.sh /usr/local/bin/start.sh

COPY . code
WORKDIR code

RUN chmod u+x /usr/local/bin/start.sh

EXPOSE 8001

CMD ["/bin/bash", "-c", "start.sh"]
