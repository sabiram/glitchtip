# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

# only if you need celery 
# RUN useradd -ms /bin/bash celery 

# Copy the start.sh script
COPY ./start.sh /usr/local/bin/start.sh

# Adds our application code to the image
COPY . code
WORKDIR code

# (Optional) Expose any necessary ports
EXPOSE 8000

# (Optional) Set environment variables

# Set a default command to run when the container starts
CMD ["bash", "-c", "/usr/local/bin/start.sh"]

