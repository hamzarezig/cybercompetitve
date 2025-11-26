# Use an appropriate base image
FROM python:3.9

# Install Docker and Docker Compose
RUN apt-get update && \
    apt-get install -y docker.io docker-compose

# Set working directory
WORKDIR /app

# Copy your files
COPY . .

# Command to run your application
CMD ["bash", "start.sh"]
