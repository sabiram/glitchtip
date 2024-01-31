# Use an official GlitchTip image as the base image
FROM glitchtip/glitchtip:latest

# Switch to root user to perform actions that require higher privileges
USER root

# Set the working directory
WORKDIR /app

# Copy the start.sh script
COPY start.sh /app/start.sh

# Ensure start.sh is executable
RUN chmod +x /app/start.sh

# Switch back to a non-root user if necessary
USER glitchtipuser

# (Optional) Expose any necessary ports
EXPOSE 8000

# (Optional) Set environment variables

# Set a default command to run when the container starts
CMD ["/app/start.sh"]
