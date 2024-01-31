# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

# Install dependencies (if needed)
# RUN apt-get update && apt-get install -y ...

# Copy your docker-compose.yml into the image
#COPY docker-compose.yml /app/docker-compose.yml

COPY ./start.sh /usr/local/bin/start.sh

# Adds our application code to the image
COPY . code
WORKDIR code
# set proper file permissions

RUN chmod u+x /usr/local/bin/start.sh

# (Optional) Expose any necessary ports
EXPOSE 8000

# (Optional) Set environment variables

# (Optional) Set a default command to run when the container starts
# CMD ["./docker-compose", "up"]

CMD ["/bin/bash", "-c", "start.sh"]
