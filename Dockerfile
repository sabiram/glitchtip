# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

# Install dependencies (if needed)
# RUN apt-get update && apt-get install -y ...

# Copy your docker-compose.yml into the image
COPY docker-compose.yml /app/docker-compose.yml

# (Optional) Add additional configuration or setup steps

# (Optional) Expose any necessary ports
EXPOSE 8000

# (Optional) Set environment variables

# (Optional) Set a default command to run when the container starts
# CMD ["./docker-compose", "up"]
