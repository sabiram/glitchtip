# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

RUN ls -l /var/lib/apt/lists

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY ./start.sh /usr/local/bin/start.sh

# Adds our application code to the image
COPY . code
WORKDIR code
# set proper file permissions

RUN chmod u+x /usr/local/bin/start.sh

EXPOSE 8001


#USER app:app

CMD ["/bin/bash", "-c", "start.sh"] 
