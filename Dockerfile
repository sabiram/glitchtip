# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

# Install dependencies (if needed)
# RUN apt-get update && apt-get install -y ...

# Copy your docker-compose.yml into the image
# COPY docker-compose.yml /app/docker-compose.yml

# (Optional) Expose any necessary ports
EXPOSE 8000

# (Optional) Set environment variables

# Copy the start.sh script
COPY start.sh /usr/local/bin/start.sh

# Ensure start.sh is executable
RUN chmod +x /usr/local/bin/start.sh

# Set a default command to run when the container starts
CMD ["/usr/local/bin/start.sh"]
