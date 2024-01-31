# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

# Switch to root user to perform actions that require higher privileges
#USER root

# only if you need celery 
#RUN useradd -ms /bin/bash celery 
COPY ./start.sh /app/start.sh

# Adds our application code to the image
COPY . code
WORKDIR code
# set proper file permissions

RUN chmod u+x /app/start.sh

# (Optional) Expose any necessary ports
EXPOSE 8000

# (Optional) Set environment variables

# Set a default command to run when the container starts
CMD ["/app/start.sh"]
