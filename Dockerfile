# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

# Install dependencies (if needed)
# RUN apt-get update && apt-get install -y ...

# Set the working directory
WORKDIR /app

# Copy the start.sh script
COPY start.sh /app/start.sh

# Ensure start.sh is executable
RUN chmod +x /app/start.sh

# (Optional) Expose any necessary ports
EXPOSE 8000

# (Optional) Set environment variables

# Set a default command to run when the container starts
CMD ["/app/start.sh"]
