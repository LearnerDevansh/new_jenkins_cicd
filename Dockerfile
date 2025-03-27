# Use a stable Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /flaskapp

# Copy the application source code and requirements file
COPY app.py requirements.txt /flaskapp/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Docker CLI inside the container
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://get.docker.com -o install-docker.sh && \
    sh install-docker.sh && \
    rm install-docker.sh && \
    apt-get clean

# Expose port 5000 (Flask default)
EXPOSE 5000

# Define the startup command
CMD ["python", "app.py"]
